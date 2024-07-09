# Top level package set
self:
# Distro package set
rosSelf: rosSuper: let
  inherit (rosSelf) lib;
in {
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

  gazebo = self.gazebo_11;

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    fetchgitArgs = {
      rev = "344117638c8ff7e239044fd0fa7085839fc03021";
      hash = "sha256-gztnxui9Fe/FTieMjdvfJjWHjkImtlsHn6fM1FruyME=";
    };
  };

  gz-cmake-vendor = (lib.patchAmentVendorGit rosSuper.gz-cmake-vendor {
    url = "https://github.com/gazebosim/gz-cmake.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-cmake3_3.5.3";
    fetchgitArgs.hash = "sha256-fnN3Fmp7F5W0JixJUEp2v/OnXzmRidS5ujmSYxIRWto=";
  }).overrideAttrs({ ... }: {
    dontFixCmake = true;
  });

  gz-common-vendor = (lib.patchAmentVendorGit rosSuper.gz-common-vendor {
    url = "https://github.com/gazebosim/gz-common.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-common5_5.5.1";
    fetchgitArgs.hash = "sha256-Wc7wUbSg9ltPFWGG/YWDaobktuZOuc8a4Pc1EDNoXrY=";
  }).overrideAttrs({ buildInputs ? [], ... }: {
    dontFixCmake = true;
    # https://github.com/gazebo-release/gz_common_vendor/pull/2
    buildInputs = buildInputs ++ [ self.pkg-config ];
  });

  gz-dartsim-vendor = (lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor {
    url = "https://github.com/dartsim/dart.git";
    rev = "v6.13.2";
    fetchgitArgs.hash = "sha256-AfKPqUiW6BsM98TIzTY2ZcFP1WvURs8/dGOzanIiB9g=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-fuel-tools-vendor = (lib.patchAmentVendorGit rosSuper.gz-fuel-tools-vendor {
    url = "https://github.com/gazebosim/gz-fuel-tools.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-fuel-tools9_9.0.3";
    fetchgitArgs.hash = "sha256-36WwY3YUeCAUDBY8N+Mbw7FuNRn1fQUifLZvoGhXtcc=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  # Fails: libGrid3D.so contains a forbidden reference to /build/
  gz-gui-vendor = (lib.patchAmentVendorGit rosSuper.gz-gui-vendor {
    url = "https://github.com/gazebosim/gz-gui.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-gui8_8.1.1";
    fetchgitArgs.hash = "sha256-heYeY6yZrCi8HTrYbgPiJ2/EKpoSfyEE2FNzzGjnTgI=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  # Requires gz-gui-vendor
  gz-launch-vendor = (lib.patchAmentVendorGit rosSuper.gz-launch-vendor {
    url = "https://github.com/gazebosim/gz-launch.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-launch7_7.1.0";
    fetchgitArgs.hash = "sha256-En3V8i/Ie8+KnSHGlm9Bap7REdLhYBaVHVbOM+/Pzno=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-math-vendor = (lib.patchAmentVendorGit rosSuper.gz-math-vendor {
    url = "https://github.com/gazebosim/gz-math.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-math7_7.4.0";
    fetchgitArgs.hash = "sha256-W+LAe9hn/LhecxFmmxihv/lNAGvze8w2BDj4rRVfzJo=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-msgs-vendor = (lib.patchAmentVendorGit rosSuper.gz-msgs-vendor {
    url = "https://github.com/gazebosim/gz-msgs.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-msgs10_10.1.2";
    fetchgitArgs.hash = "sha256-/RFzosggLDq5eGfvrcF4Ka/VfHQtZIQprMkY7rd8cZg=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  # Requires changing tbb_2021_8 to tbb_2021_11
  # https://github.com/ros/rosdistro/pull/41981
  gz-ogre-next-vendor = (lib.patchAmentVendorGit rosSuper.gz-ogre-next-vendor {
    url = "https://github.com/OGRECave/ogre-next.git";
    rev = "v2.3.3";
    fetchgitArgs.hash = "sha256-elSj35LwsLzj1ssDPsk9NW/KSXfiOGYmw9hQSAWdpFM=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-physics-vendor = (lib.patchAmentVendorGit rosSuper.gz-physics-vendor {
    url = "https://github.com/gazebosim/gz-physics.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-physics7_7.2.0";
    fetchgitArgs.hash = "sha256-vDO/QTiSF/yrDilr/4vGj/yEXraACl+TIS91phgMN7s=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-plugin-vendor = (lib.patchAmentVendorGit rosSuper.gz-plugin-vendor {
    url = "https://github.com/gazebosim/gz-plugin.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-plugin2_2.0.3";
    fetchgitArgs.hash = "sha256-9t6vcnBbfRWu6ptmqYAhmWKDoKAaK631JD9u1C0G0mY=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-rendering-vendor = (lib.patchAmentVendorGit rosSuper.gz-rendering-vendor {
    url = "https://github.com/gazebosim/gz-rendering.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-rendering8_8.1.1";
    fetchgitArgs.hash = "sha256-TI/lGK7dRc6z/nlBKfK7gjKFNCMhgFLFJA+YuVB7Oc8=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-sensors-vendor = (lib.patchAmentVendorGit rosSuper.gz-sensors-vendor {
    url = "https://github.com/gazebosim/gz-sensors.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-sensors8_8.0.1";
    fetchgitArgs.hash = "sha256-JK2xOQKvX+0fcnN0e1JcARMx+Lsq8DfkXDHDRiTfuw0=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  # Requires gz-gui-vendor
  gz-sim-vendor = (lib.patchAmentVendorGit rosSuper.gz-sim-vendor {
    url = "https://github.com/gazebosim/gz-sim.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-sim8_8.3.0";
    fetchgitArgs.hash = "sha256-yvI6CvmSHhWX/lT38T05oYwyEUK98B5bFol/jZLBDNU=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-tools-vendor = (lib.patchAmentVendorGit rosSuper.gz-tools-vendor {
    url = "https://github.com/gazebosim/gz-tools.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-tools2_2.0.1";
    fetchgitArgs.hash = "sha256-sV/T53oVk1fgjwqn/SRTaPTukt+vAlGGxGvTN8+G6Mo=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-transport-vendor = (lib.patchAmentVendorGit rosSuper.gz-transport-vendor {
    url = "https://github.com/gazebosim/gz-transport.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-transport13_13.2.0";
    fetchgitArgs.hash = "sha256-B6YvpZ8nSgAkhX9VXbxRHjYc9yfFE+qO1hw3S8xeXJc=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  gz-utils-vendor = (lib.patchAmentVendorGit rosSuper.gz-utils-vendor {
    url = "https://github.com/gazebosim/gz-utils.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "gz-utils2_2.2.0";
    fetchgitArgs.hash = "sha256-dNoDOZtk/zseHuOM5mOPHkXKU7wqxxKrFnh7e09bjRA=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

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
    fetchgitArgs = {
      rev = "b63a0b6f79d3ea91dc221724b42dae49894449fc";
      sha256 = "sha256-x9JCU2Ryssq424n90IzVOxixnvsoYTukyCOL3zNbwt4=";
      leaveDotGit = true;
    };
  };

  libphidget22 = lib.patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  mcap-vendor = lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.3.0.tar.gz";
    hash = "sha256-Qaz26F11VWxkQH8HfgVJLTHbHwmeByQu8ENkuyk5rPE=";
  };

  rviz-ogre-vendor = lib.patchAmentVendorGit rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre.git";
    rev = "v1.12.10";
    fetchgitArgs.hash = "sha256-Z0ixdSmkV93coBBVZ5R3lPLfVMXRfWsFz/RsSyqPWFY=";
    tarSourceArgs.hook = let
      version = "1.79";
      imgui = self.fetchFromGitHub rec {
        name = "${repo}-${version}";
        owner = "ocornut";
        repo = "imgui";
        rev = "v${version}";
        hash = "sha256-GIVhZ8Q7WebfHeKeJdVABXrTT26FOS7updncbv2LRnQ=";
      };
      imguiTar = lib.tarSource { } imgui;
    in ''
      substituteInPlace Components/Overlay/CMakeLists.txt \
        --replace ${lib.escapeShellArg imgui.url} file://${lib.escapeShellArg imguiTar}
    '';
  };

  sdformat-vendor = (lib.patchAmentVendorGit rosSuper.sdformat-vendor {
    url = "https://github.com/gazebosim/sdformat.git";
    originalUrl = "https://github.com/gazebosim/\${GITHUB_NAME}.git";
    rev = "sdformat14_14.1.1";
    fetchgitArgs.hash = "sha256-Fz8xWC55IOB7hAGck+8exu81qb01vqUS1K7izuPmo0A=";
  }).overrideAttrs({ ... } : {
    dontFixCmake = true;
  });

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/142
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/61a7e35cd5abece97259e76aed8504052b2f5b53.patch";
        hash = "sha256-b3bEbbaSUDkwTEHJ8gVPEb+AR/zuWwLqiAW5g1T1dPU=";
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
        url = "https://github.com/ros/urdfdom_headers/commit/6e0cea148c3a7123f8367cd48d5709a4490c32f1.patch";
        hash = "sha256-LC2TACGma/k6+WE9fTkzY98SgJYKsVuj5O9v84Q5mQ4=";
      })
    ];
  });
}
