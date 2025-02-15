# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in with lib; {
  cyclonedds = rosSuper.cyclonedds.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = [
      # Fix paths in pkg-config file
      # https://github.com/eclipse-cyclonedds/cyclonedds/pull/1453
      (self.fetchpatch {
        url = "https://github.com/eclipse-cyclonedds/cyclonedds/commit/3ff967e32b8078d497a8b9c70735849c04eaebf6.patch";
        hash = "sha256-F5zofoO0YbYfqLrb6s30un9k9+R8rQazLHw+uND1UxE=";
      })
    ];
  });

  # This is a newer version than the build system tries to download, but this
  # version doesn't try to run host platform binaries on the build platform
  # and fixes "Allocator foonathan::memory::memory_pool received invalid size"
  # error on MacOS
  foonathan-memory-vendor = patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    originalRev = "v0.7-1";
    rev = "v0.7-3";
    fetchgitArgs.hash = "sha256-nLBnxPbPKiLCFF2TJgD/eJKJJfzktVBW3SRW2m3WK/s=";
  };

  gazebo = self.gazebo_11;

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "c05843a9f622db08ad59804c190f98879b76beba";
    fetchgitArgs.hash = "sha256-h/e2vJacUp7PITez9HPzGc5+ofz7Oplso44VibECmsI=";
  };

  iceoryx-hoofs = rosSuper.iceoryx-hoofs.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/acc1e979a2d5ca30737efb077b00b42f1c4a8429.patch";
        hash = "sha256-npFHdb0a3JBA8T6vke54DA08C93aNc/7c6xrfMBo7zI=";
        stripLen = 1;
      })
    ];
  });

  lely-core-libraries = lib.patchExternalProjectGit rosSuper.lely-core-libraries {
    url = "https://gitlab.com/lely_industries/lely-core.git";
    rev = "b63a0b6f79d3ea91dc221724b42dae49894449fc";
    fetchgitArgs = {
      hash = "sha256-x9JCU2Ryssq424n90IzVOxixnvsoYTukyCOL3zNbwt4=";
      leaveDotGit = true;
    };
  };

  libfranka = rosSuper.libfranka.overrideAttrs ({
    cmakeFlags ? [], ...
  }: {
    # Uses custom flag to disable tests. Attempts to download GTest without
    # this.
    cmakeFlags = cmakeFlags ++ [ "-DBUILD_TESTS=OFF" ];
  });

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  libyaml-vendor = patchExternalProjectGit rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml.git";
    rev = "2c891fc7a770e8ba2fec34fc6b545c672beb37e6";
    fetchgitArgs.hash = "sha256-S7PnooyfyAsIiRAlEPGYkgkVACGaBaCItuqOwrq2+qM=";
  };

  mcap-vendor = patchExternalProjectGit (patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v0.8.0.tar.gz";
    sha256 = "sha256-KDP3I0QwjqWGOfOzY6DPF2aVgK56tDX0PzsQTP9u9Ug=";
  }) {
    url = "https://github.com/lz4/lz4.git";
    rev = "d44371841a2f1728a3f36839fd4b7e872d0927d3";
    fetchgitArgs.hash = "sha256-f7GZgOzUrkAfw1mqwlIKQQqDvkvIahGlHvq6AL+aAvA=";
  };

  moveit-kinematics = rosSuper.moveit-kinematics.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    # Added upstream in 2.7.2
    # https://github.com/ros-planning/moveit2/pull/2109
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.moveit-ros-planning ];
  });

  novatel-oem7-driver = (patchExternalProjectGit rosSuper.novatel-oem7-driver {
    url = "https://github.com/novatel/novatel_edie";
    rev = "d02ccc2dfe531d642c1e2ca8a8c0f8205c856f23";
    fetchgitArgs.hash = "sha256-ZQ7z9vQ8quI+SoNhB93tTw5LQe07UAKdbJJpaMj1C6I=";
  }).overrideAttrs ({ ... }: {
    dontFixCmake = true;
  });

  plotjuggler-ros = rosSuper.plotjuggler-ros.overrideAttrs ({
    patches ? [], nativeBuildInputs ? [], ...
  }: {
    patches = patches ++ [
      # Fix detection of ROS 2 Humble
      # https://github.com/PlotJuggler/plotjuggler-ros-plugins/pull/82
      (self.fetchpatch {
        url = "https://github.com/PlotJuggler/plotjuggler-ros-plugins/commit/fa0e6c1b277077f863905307abb0e3e1bb3da7d9.patch";
        hash = "sha256-ojZ/ErZZkGIB89O0u2ocU6Gcdu/JhowUqkdsulcArHY=";
      })
    ];
    nativeBuildInputs = nativeBuildInputs ++ [ rosSelf.ros-environment ];
  });

  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/e78372fd63eda527c9fad5fcdab8ca31eb3f36d2.patch";
        hash = "sha256-8+58ggPUJmEQIS9C4RzT4PhK1pT9ms98nppn3ZA8AEo=";
      })
      (self.fetchpatch {
        url = "https://github.com/ros-visualization/python_qt_binding/commit/ee4d43bcdb0c5c5d40f81dea3de6185298ab34a7.patch";
        hash = "sha256-+n7wqQ9jDybwxVeUEjOQSQJh7nnU8JXv5DNCoK/5Sm4=";
      })
    ];
  });

  rosidl-generator-py = rosSuper.rosidl-generator-py.overrideAttrs ({
    postPatch ? "", ...
  }: let
    python = rosSelf.python;
  in {
    # Fix finding NumPy headers
    postPatch = postPatch + ''
      substituteInPlace cmake/rosidl_generator_py_generate_interfaces.cmake \
       --replace-fail '"import numpy"' "" \
       --replace-fail 'numpy.get_include()' "'${python.pkgs.numpy}/${python.sitePackages}/numpy/core/include'"
    '';
  });

  rviz-ogre-vendor = (patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  }).overrideAttrs ({ ... }: {
    # Prevent replacing $out/opt/.. with $out/var/empty/..
    dontFixCmake = true;
  });

  shared-queues-vendor = patchVendorUrl (patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/concurrentqueue/archive/8f65a8734d77c3cc00d74c0532efca872931d3ce.zip";
    sha256 = "0cmsmgc87ndd9hiv187xkvjkn8fipn3hsijjc864h2lfcyigbxq1";
  }) {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    sha256 = "1255n51y1bjry97n4w60mgz6b9h14flfrxb01ihjf6pwvvfns8ag";
  };

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/142
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/cbe6884d267779463bb444be851f6404e692cc0a.patch";
        hash = "sha256-1gTRKIGqiSRion76bGecSfFJSBskYUJguUIa6ePIiX4=";
      })
    ];
  });

  urdfdom-headers = rosSuper.urdfdom-headers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom_headers/pull/66
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom_headers/commit/c9c993147bbf18d5ec83bae684c5780281e529b4.patch";
        hash = "sha256-BnYPdcetYSim2O1R38N0d1tY0Id++AgKNic8+dlM6Vg=";
      })
    ];
  });

  vrpn = rosSuper.vrpn.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix compatibility with recent CMake versions
      (self.fetchpatch {
        url = "https://github.com/vrpn/vrpn/commit/04d86b71de06cb6cb8d2cb7276fef27275d083d2.patch";
        hash = "sha256-AEiTLXPYcFdZrE4KzvCkXH4GiSFmhCl14wkq+0MRWLo=";
      })
    ];
  });

  zenoh-cpp-vendor = let
    zenoh-c-url = "https://github.com/eclipse-zenoh/zenoh-c.git";
    zenoh-c-rev = "57d5e4d31d9b38fef34d7bcad3d3e54869c4ce73";
    zenoh-c-hash = "sha256-e8OtpyKp+AEgh6QWD/5aBtbmDV55ocx9DeLakYdikmI=";
  in (lib.patchAmentVendorGit (lib.patchAmentVendorGit rosSuper.zenoh-cpp-vendor {
    url = "https://github.com/eclipse-zenoh/zenoh-cpp";
    rev = "964b64dc8b935a43147287199e7bb12da7b141e6";
    fetchgitArgs.hash = "sha256-9aAWcTJU3D5R2J9fasQ1aUYXWkcCk3FcmOT340Pc0ko=";
  }) {
    url = zenoh-c-url;
    rev = zenoh-c-rev;
    fetchgitArgs.hash = zenoh-c-hash;
  }).overrideAttrs ({
     nativeBuildInputs ? [], postPatch ? "", ...
  }: let
      zenoh-c-source = self.fetchFromGitHub {
        owner = "eclipse-zenoh";
        repo = "zenoh-c";
        rev = zenoh-c-rev;
        hash = zenoh-c-hash;
      };
    in {
    nativeBuildInputs = nativeBuildInputs ++ [
      self.rustPlatform.cargoSetupHook
      self.cargo
      self.rustc
    ];
    postPatch = postPatch + ''
      ln -s ${zenoh-c-source.outPath}/Cargo.lock Cargo.lock
    '';
    cargoDeps = self.rustPlatform.importCargoLock {
      lockFile = "${zenoh-c-source.outPath}/Cargo.lock";
      outputHashes = {
        "zenoh-1.0.0-dev" = "sha256-1kU5+UUH9ZI3dkXR26C5O0C0ZEBlMUnGHHMLzdr1MRs=";
      };
    };
  });
}
