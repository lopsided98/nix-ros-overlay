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
    patches ? [],
    cmakeFlags ? [], ...
  }: {
    patches = [
      # Fix paths in pkg-config file
      # https://github.com/eclipse-cyclonedds/cyclonedds/pull/1453
      (self.fetchpatch {
        url = "https://github.com/eclipse-cyclonedds/cyclonedds/commit/3ff967e32b8078d497a8b9c70735849c04eaebf6.patch";
        hash = "sha256-F5zofoO0YbYfqLrb6s30un9k9+R8rQazLHw+uND1UxE=";
      })
    ];

    cmakeFlags = cmakeFlags ++ [
      # Tries to download something with maven
      "-DBUILD_IDLC=OFF"
      # src/tools/ddsperf/CMakeFiles/ddsperf_types_generate.dir/build.make:74: *** target pattern contains no '%'.  Stop.
      "-DBUILD_DDSPERF=OFF"
    ];
  });

  fmilibrary-vendor = patchVendorGit rosSuper.fmilibrary-vendor {
    url = "https://github.com/modelon-community/fmi-library.git";
    fetchgitArgs = {
      rev = "2.1";
      sha256 = "177rlw1ba1y0ahi8qfpg0sflh8mjdl6fmffwjg2a5vxyxwdwrjvh";
    };
  };

  # This is a newer version than the build system tries to download, but this
  # version doesn't try run host platform binaries on the build platform.
  foonathan-memory-vendor = patchVendorGit rosSuper.foonathan-memory-vendor {
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

  python-cmake-module = rosSuper.python-cmake-module.overrideAttrs ({ ... }: let
    python = rosSelf.python;
  in {
    pythonExecutable = python.pythonForBuild.interpreter;
    pythonLibrary = "${python}/lib/lib${python.libPrefix}.so";
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

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    postPatch ? "",
    patches ? [], ...
  }: let
    python = rosSelf.python;
  in {
    patches = patches ++ [
      # Remove stray numpy import in template
      # https://github.com/ros2/rosidl_python/pull/185
      (self.fetchpatch {
        url = "https://github.com/ros2/rosidl_python/commit/bf866089baeb918834d9d16e05668d9f28887b87.patch";
        hash = "sha256-tOb0t50TbV29+agDupm5XUZJJErfaujgIRtmb2vZxWo=";
        stripLen = 1;
      })
    ];
    # Fix finding NumPy headers
    postPatch = postPatch + ''
      substituteInPlace cmake/rosidl_generator_py_generate_interfaces.cmake \
       --replace '"import numpy"' "" \
       --replace 'numpy.get_include()' "'${python.pkgs.numpy}/${python.sitePackages}/numpy/core/include'"
    '';
    setupHook = ./rosidl-generator-py-setup-hook.sh;
  });

  rmw-implementation = rosSuper.rmw-implementation.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    # The default implementation must be available to all dependent packages
    # at build time.
    propagatedBuildInputs = with rosSelf; [
      rmw-fastrtps-cpp
    ] ++ propagatedBuildInputs;
  });

  # The build hangs forever while running CMake, causing problems with CI
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
