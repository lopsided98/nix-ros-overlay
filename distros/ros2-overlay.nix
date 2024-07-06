self:
rosSelf: rosSuper: with rosSelf.lib; {

  ament-cmake-core = rosSuper.ament-cmake-core.overrideAttrs ({
    propagatedBuildInputs ? [],
    nativeBuildInputs ? [], ...
  }: let
    setupHook = rosSelf.callPackage ./ament-cmake-core-setup-hook { };
  in {
    propagatedBuildInputs = [ setupHook ] ++ propagatedBuildInputs;
    nativeBuildInputs = [ setupHook ] ++ nativeBuildInputs;
    outputs = [ "out" "dev" ];
  });

  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ [
      # Tries to download something with maven
      "-DBUILD_IDLC=OFF"
      # src/tools/ddsperf/CMakeFiles/ddsperf_types_generate.dir/build.make:74: *** target pattern contains no '%'.  Stop.
      "-DBUILD_DDSPERF=OFF"
    ];
  });

  fastrtps = rosSuper.fastrtps.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    cmakeFlags = cmakeFlags ++ optionals (!self.stdenv.buildPlatform.canExecute self.stdenv.hostPlatform) (
      [ "-DSM_RUN_RESULT=0" ] ++
      optional (self.stdenv.isLinux || self.stdenv.isDarwin)
        "-DSM_RUN_RESULT__TRYRUN_OUTPUT=PTHREAD_RWLOCK_PREFER_READER_NP"
    );
  });

  fmilibrary-vendor = patchExternalProjectGit rosSuper.fmilibrary-vendor {
    url = "https://github.com/modelon-community/fmi-library.git";
    fetchgitArgs = {
      rev = "2.1";
      sha256 = "177rlw1ba1y0ahi8qfpg0sflh8mjdl6fmffwjg2a5vxyxwdwrjvh";
    };
  };

  # This is a newer version than the build system tries to download, but this
  # version doesn't try to run host platform binaries on the build platform.
  foonathan-memory-vendor = patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    fetchgitArgs = {
      rev = "v0.7-2";
      sha256 = "sha256-5nJNW0xwjSCc0Egq1zv0tIsGvAh1Xbnu8190A1ZP+VA=";
    };
  };

  gmock-vendor = rosSuper.gmock-vendor.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    buildInputs = [];
    nativeBuildInputs = nativeBuildInputs ++ [ self.buildPackages.cmake ];
  });

  gtest-vendor = rosSuper.gtest-vendor.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    buildInputs = [];
    nativeBuildInputs = nativeBuildInputs ++ [ self.buildPackages.cmake ];
  });

  librealsense2 = rosSuper.librealsense2.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix missing cstdint include
      (self.fetchpatch {
        url = "https://github.com/IntelRealSense/librealsense/commit/847b74d3dcade2842ba138f321474159315ab8c2.patch";
        hash = "sha256-zaW8HG8rfsApI5S/3x+x9Fx8xhyTIPNn/fJVFtkmlEA=";
      })
    ];
  });

  popf = rosSuper.popf.overrideAttrs ({
    nativeBuildInputs ? [], postPatch ? "", ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.perl ];
    postPatch = postPatch + ''
      patchShebangs --build src/VALfiles/parsing/fixyywrap
    '';
  });

  python-cmake-module = rosSuper.python-cmake-module.overrideAttrs ({ ... }: let
    python = rosSelf.python;
    libExt = if self.stdenv.isDarwin then "dylib" else "so";
  in {
    pythonExecutable = python.pythonOnBuildForHost.interpreter;
    pythonLibrary = "${python}/lib/lib${python.libPrefix}.${libExt}";
    pythonIncludeDir = "${python}/include/${python.libPrefix}";
    setupHook = ./python-cmake-module-setup-hook.sh;
    outputs = [ "out" "dev" ];
  });

  rcutils = rosSuper.rcutils.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix linking to libatomic
      # https://github.com/ros2/rcutils/pull/384
      (self.fetchpatch {
        url = "https://github.com/ros2/rcutils/commit/05e7336b2160739915be0e2c4a81710806fd2f9c.patch";
        hash = "sha256-EiO1AJnhvOk81TzFMP4E8NhB+9ymef2oA7l26FZFb1M=";
      })
    ];
  });

  rig-reconfigure = patchExternalProjectGit rosSuper.rig-reconfigure {
    url = "https://github.com/ocornut/imgui.git";
    fetchgitArgs = {
      rev = "3ea0fad204e994d669f79ed29dcaf61cd5cb571d";
      sha256 = "sha256-v9FP9zJvul+2zRGaIugNDBCR9xZqCY8U90Dfe6fXpJM=";
    };
  };

  rmw-implementation = rosSuper.rmw-implementation.overrideAttrs ({
    propagatedBuildInputs ? [], buildInputs ? [], ...
  }: {
    # The default implementation must be available to all dependent packages
    # at build time.
    propagatedBuildInputs = with rosSelf; [
      rmw-fastrtps-cpp
    ] ++ propagatedBuildInputs;
    # rmw-cyclonedds-cpp fails to build on MacOS.
    buildInputs = if self.stdenv.isDarwin then
      builtins.filter (p: p.pname != "ros-${p.rosDistro}-rmw-cyclonedds-cpp") buildInputs
    else
      buildInputs;
  });

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    postPatch ? "", ...
  }: let
    python = rosSelf.python;
  in {
    # Fix finding NumPy headers
    postPatch = postPatch + ''
      substituteInPlace cmake/rosidl_generator_py_generate_interfaces.cmake \
       --replace '"import numpy"' "" \
       --replace 'numpy.get_include()' "'${python.pkgs.numpy}/${python.sitePackages}/numpy/core/include'"
    '';
    setupHook = ./rosidl-generator-py-setup-hook.sh;
  });

  rosidl-default-generators = rosSuper.rosidl-default-generators.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    # Add Rust support to all packages
    # FIXME: seems to break nav2-msgs
    # propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.rosidl-generator-rs ];
  });

  rosidl-generator-rs = rosSelf.callPackage ../pkgs/rosidl-generator-rs { };

  rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_robot_monitor/rqt_robot_monitor"
    '';
  });

  rviz-ogre-vendor = rosSuper.rviz-ogre-vendor.overrideAttrs ({ ... }: {
    # Prevent replacing $out/opt/.. with $out/var/empty/..
    dontFixCmake = true;
  });

  rviz2 = rosSuper.rviz2.overrideAttrs ({
    nativeBuildInputs ? [], qtWrapperArgs ? [], postFixup ? "", meta ? {}, ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    qtWrapperArgs = qtWrapperArgs ++ [
      # Use X11 by default in RViz2.
      # https://github.com/ros-visualization/rviz/issues/1442
      "--set-default QT_QPA_PLATFORM xcb"
    ];
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rviz2/rviz2"
    '';
    meta = meta // {
      mainProgram = "rviz2";
    };
  });

  # The build gets stuck in an infinite loop with absolute CMAKE_INSTALL_LIBDIR:
  # https://github.com/lagadic/visp/blob/9f1997ad17688c2d104cf2b29b57382c5d0af960/cmake/VISPGenerateConfig.cmake#L46
  # Also has the standard bad assumptions that CMAKE_INSTALL_*DIR is relative.
  visp = rosSuper.visp.overrideAttrs ({
    meta ? {}, ...
  }: {
    meta = meta // {
      broken = true;
    };
  });

  yaml-cpp-vendor = patchVendorUrl rosSuper.yaml-cpp-vendor {
    url = "https://github.com/jbeder/yaml-cpp/archive/0f9a586ca1dc29c2ecb8dd715a315b93e3f40f79.zip";
    sha256 = "1g45f71mk4gyca550177qf70v5cvavlsalmg7x8bi59j6z6f0mgz";
  };

}
