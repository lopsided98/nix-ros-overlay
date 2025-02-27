self:
rosSelf: rosSuper: with rosSelf.lib; {

  # TODO: remove once https://github.com/ros/rosdistro/pull/43895 is merged
  python = rosSelf.python3;
  pythonPackages = rosSelf.python.pkgs;

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

  ament-cmake-vendor-package = rosSuper.ament-cmake-vendor-package.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Install to standard directories instead of /opt. With Nix, we don't have
    # to worry about collisions with system packages and Nix tooling generally
    # expects standard directories.
    postPatch = postPatch + ''
      ls -l cmake/templates
      substituteInPlace cmake/ament_vendor.cmake \
        --replace-fail 'opt/''${PROJECT_NAME}' .
      substituteInPlace cmake/templates/vendor_package.dsv.in \
        --replace-fail 'opt/@PROJECT_NAME@/' ""
      substituteInPlace cmake/templates/{vendor_package.sh.in,vendor_package_cmake_prefix.cmake.in,vendor_package_cmake_prefix.sh.in} \
        --replace-fail '/opt/@PROJECT_NAME@' ""
      substituteInPlace cmake/templates/vendor_package_cmake_prefix.dsv.in \
        --replace-fail 'opt/@PROJECT_NAME@' ""
    '';
  });

  backward-ros = rosSuper.backward-ros.overrideAttrs ({ postPatch ? "", ... }: {

    # The `--as-needed` flag directs the linker to search all libraries specified
    # during its invocation to identify which ones contain the symbols required by the binary.
    #
    # Due to the nixpkgs binutils wrapper and the reliance to `propagatedBuildInputs`,
    # the overlay often propagates an excessive number of libraries.
    #
    # As a result, the `--as-needed` flag can significantly increase the time the linker
    # spends searching through these libraries, potentially causing builds to fail to complete.

    postPatch = postPatch + ''
     sed '/-Wl,--as-needed/d' -i cmake/BackwardConfigAment.cmake
    '';
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
    rev = "2.2.3";
    revVariable = "fmilibrary_version";
    fetchgitArgs.hash = "sha256-i8EtjPMg39S/3RyoUaXm5A8Nu/NbgAwjxRCdyh2elyU=";
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

  gz-tools-vendor = rosSuper.gz-tools-vendor.overrideAttrs {
    setupHook = self.writeText "gz-tools-setup-hook.sh" ''
      addGzConfigPath() {
        if [ -d "$1/share/gz" ]; then
            addToSearchPath GZ_CONFIG_PATH "$1/share/gz"
        fi
      }
      addEnvHooks "$targetOffset" addGzConfigPath
    '';
  };

  iceoryx-posh = rosSuper.iceoryx-posh.overrideAttrs ({
    patches ? [],
    buildInputs ? [],
    cmakeFlags ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/d4519632964794553791ef3f951ed47ca52ebbb6.patch";
        hash = "sha256-f4kITUql8uFSptFmu7LZGChlfDG63b0gmsRyHp1NsWw=";
        stripLen = 1;
      })
    ];

    buildInputs = buildInputs ++ [ self.cpptoml ];
    cmakeFlags = cmakeFlags ++ [ "-DDOWNLOAD_TOML_LIB=OFF" ];
  });

  # Get rid of nlohmann_json vendoring
  librealsense2 = rosSuper.librealsense2.overrideAttrs ({
    buildInputs ? [], postPatch ? "", ...
  }: {
    buildInputs = buildInputs ++ [ self.nlohmann_json ];
    postPatch = postPatch + ''
      substituteInPlace third-party/CMakeLists.txt \
        --replace-fail 'include(CMake/external_json.cmake)' ""
    '';
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
    libExt = self.stdenv.hostPlatform.extensions.sharedLibrary;
  in {
    pythonExecutable = python.pythonOnBuildForHost.interpreter;
    pythonLibrary = "${python}/lib/lib${python.libPrefix}${libExt}";
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
    rev = "v1.89.8-docking";
    fetchgitArgs.hash = "sha256-eY8lRsonPfDRTMCPhInT9rQ6lSaJPsXpkh428OKpTnA=";
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

  ros-gz-sim = rosSuper.ros-gz-sim.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # This launch file attempts to run the gz tool with a Ruby interpreter, but
    # in our case it is an regular executable because it is wrapped.
    postPatch = postPatch + ''
      substituteInPlace launch/gz_sim.launch.py.in \
        --replace-warn 'ruby $(which gz) sim' 'gz sim' \
        --replace-warn 'ruby $(which ign) gazebo' 'ign gazebo'
    '';
  });

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({ ... }: {
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

  rosx-introspection = rosSuper.rosx-introspection.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Don't download CPM, which is never needed because all
    # dependencies are provided by Nix.
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail 'include(cmake/CPM.cmake)' ""
    '';
  });

  rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_robot_monitor/rqt_robot_monitor"
    '';
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

  zmqpp-vendor = patchExternalProjectGit rosSuper.zmqpp-vendor {
    url = "https://github.com/zeromq/zmqpp.git";
    originalRev = "master";
    rev = "da73a138f290274cfd604b3f05a908956390a66e";
    fetchgitArgs.hash = "sha256-UZyJpBEOf/Ys+i2tiBTjv4PlM5fHjjNLWuGhpgcmYyM=";
  };
}
