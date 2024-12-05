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

  foonathan-memory-vendor = lib.patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    rev = "v0.7-3";
    fetchgitArgs.hash = "sha256-nLBnxPbPKiLCFF2TJgD/eJKJJfzktVBW3SRW2m3WK/s=";
  };

  gazebo = self.gazebo_11;

  geometric-shapes = rosSuper.geometric-shapes.overrideAttrs({
      postPatch ? "", ...
  }: {
      # Remove workaround for Ubuntu-specific dependency hell issue
      postPatch = postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail \
          'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
          'find_package(octomap REQUIRED)'
      '';
  });

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "344117638c8ff7e239044fd0fa7085839fc03021";
    fetchgitArgs.hash = "sha256-gztnxui9Fe/FTieMjdvfJjWHjkImtlsHn6fM1FruyME=";
  };

  gz-cmake-vendor = lib.patchGzAmentVendorGit rosSuper.gz-cmake-vendor {
    version = "4.1.0";
    hash = "sha256-GyVDbJM3qdFSdp+Kw8z1vB6ipOkB0+4TYWLV+FhIsj4=";
  };

  gz-common-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-common-vendor {
    version = "6.0.0";
    hash = "sha256-Oo4dGN2vsVaElKf/KYjjJq6tlYLRPr0/uh6urGxvDdc=";
  }).overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # https://github.com/gazebo-release/gz_common_vendor/pull/2
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  gz-dartsim-vendor = lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor {
    url = "https://github.com/dartsim/dart.git";
    rev = "v6.13.2";
    fetchgitArgs.hash = "sha256-AfKPqUiW6BsM98TIzTY2ZcFP1WvURs8/dGOzanIiB9g=";
  };

  gz-fuel-tools-vendor = lib.patchGzAmentVendorGit rosSuper.gz-fuel-tools-vendor {
    version = "10.0.0";
    hash = "sha256-9WskZnci7D09aW32lzmdtlhRBM+hcmhG6iNgf3OC1js=";
  };

  gz-gui-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-gui-vendor {
    version = "9.0.0";
    hash = "sha256-/YJW6XmdGwbyd5Nx3wcTqnRlpwE1unVGaNX91qfZmiM=";
  }).overrideAttrs ({
    postInstall ? "", ...
  }: {
    # "RPATH of binary libGrid3D.so contains a forbidden reference to
    # /build/" (see https://github.com/gazebosim/gz-gui/issues/627).
    postInstall = postInstall + ''
      ${self.patchelf}/bin/patchelf --remove-rpath $out/lib64/gz-gui-9/plugins/libGrid3D.so
    '';
  });

  gz-launch-vendor = lib.patchGzAmentVendorGit rosSuper.gz-launch-vendor {
    version = "8.0.0";
    hash = "sha256-K2W2SSlhJvF9mxEMNa7tZa3/3/LIvxZMGeVb0Mi6Vso=";
  };

  gz-math-vendor = lib.patchGzAmentVendorGit rosSuper.gz-math-vendor {
    version = "8.0.0";
    hash = "sha256-3+846hhsaBaiFLIURlXQx6Z1+VYfp9UZgjdl96JvrRw=";
  };

  gz-msgs-vendor = lib.patchGzAmentVendorGit rosSuper.gz-msgs-vendor {
    version = "11.0.1";
    hash = "sha256-bOHw1CvQDGB8CaJnZF3CwsdeQJyn6LOvufRxbH8ufZc=";
  };

  gz-ogre-next-vendor = (lib.patchAmentVendorGit rosSuper.gz-ogre-next-vendor {
    url = "https://github.com/OGRECave/ogre-next.git";
    rev = "v2.3.3";
    fetchgitArgs.hash = "sha256-elSj35LwsLzj1ssDPsk9NW/KSXfiOGYmw9hQSAWdpFM=";
  }).overrideAttrs({ ... }: {
    dontFixCmake = true;
  });

  gz-physics-vendor = lib.patchGzAmentVendorGit rosSuper.gz-physics-vendor {
    version = "8.0.0";
    hash = "sha256-PjwrJG3xvRYrkHDTaBUgoaW8NglEYDPuJrk4QjJjTHU=";
  };

  gz-plugin-vendor = lib.patchGzAmentVendorGit rosSuper.gz-plugin-vendor {
    version = "3.0.0";
    hash = "sha256-h2Dx0KcFmJlS67q0v1zbd9nQkTCKgHkxt5KKTT5v+fw=";
  };

  gz-rendering-vendor = lib.patchGzAmentVendorGit rosSuper.gz-rendering-vendor {
    version = "9.0.0";
    hash = "sha256-e3OPLeqV6OgjnQrbpwRj59e7Z0BqN2wOee/gAaMHfqU=";
  };

  gz-sensors-vendor = lib.patchGzAmentVendorGit rosSuper.gz-sensors-vendor {
    version = "9.0.0";
    hash = "sha256-8Ato7/YRL7JebbVPASD6VF9lf/Uyq26MIg2l+jQ4GDk=";
  };

  gz-sim-vendor = lib.patchGzAmentVendorGit rosSuper.gz-sim-vendor {
    version = "9.0.0";
    hash = "sha256-gsWKknqcTiJc4YHIkmg1YGItwHG1As2OUnpPBQIwqj8=";
  };

  gz-tools-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-tools-vendor {
    version = "2.0.1";
    hash = "sha256-sV/T53oVk1fgjwqn/SRTaPTukt+vAlGGxGvTN8+G6Mo=";
  }).overrideAttrs({
    nativeBuildInputs ? [],
    propagatedNativeBuildInputs ? [],
    qtWrapperArgs ? [],
    postFixup ? "", ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [
      self.qt5.qtquickcontrols2
      self.qt5.qtgraphicaleffects
      self.pkg-config
    ];
    qtWrapperArgs = qtWrapperArgs ++ [
      # Gazebo is currently broken on Wayland
      # https://gazebosim.org/docs/ionic/troubleshooting/#wayland-issues
      "--set-default QT_QPA_PLATFORM xcb"
    ];
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/gz"
    '';
  });

  gz-transport-vendor = lib.patchGzAmentVendorGit rosSuper.gz-transport-vendor {
    version = "14.0.0";
    hash = "sha256-zoGphy2cpmqJsnyS1LNVm4eGtHCWkAwIblga4RdVj4k=";
  };

  gz-utils-vendor = lib.patchGzAmentVendorGit rosSuper.gz-utils-vendor {
    version = "3.0.0";
    hash = "sha256-maq0iGCGbrjVGwBNNIYYSAKXxszwlAJS4FLrGNxsA5c=";
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

  libphidget22 = lib.patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.19.20240304.tar.gz";
    hash = "sha256-GpzGMpQ02s/X/XEcGoozzMjigrbqvAu81bcb7QG+36E=";
  };

  mcap-vendor = lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.4.0.tar.gz";
    hash = "sha256-ZP8+URGfN//Pr53uy9mHp8tNTZA110o/03czlaRw/aE=";
  };

  moveit-core = rosSuper.moveit-core.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Remove workaround for Ubuntu-specific dependency hell issue
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
        'find_package(octomap REQUIRED)'
    '';
  });

  moveit-ros-occupancy-map-monitor = rosSuper.moveit-ros-occupancy-map-monitor.overrideAttrs ({
    postPatch ? "", ...
  }: {
    # Remove workaround for Ubuntu-specific dependency hell issue
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt --replace-fail \
        'find_package(octomap 1.9.7...<1.10.0 REQUIRED)' \
        'find_package(octomap REQUIRED)'
    '';
  });

  nlohmann-json-schema-validator-vendor = lib.patchExternalProjectGit rosSuper.nlohmann-json-schema-validator-vendor {
    url = "https://github.com/pboettch/json-schema-validator.git";
    rev = "5ef4f903af055550e06955973a193e17efded896";
    revVariable = "nlohmann_json_schema_validator_version";
    fetchgitArgs.hash = "sha256-b02OFUx0BxUA6HN6IaacSg1t3RP4o7NND7X0U635W8U=";
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
        --replace-fail ${lib.escapeShellArg imgui.url} file://${lib.escapeShellArg imguiTar}
    '';
  };

  rviz-rendering = rosSuper.rviz-rendering.overrideAttrs ({
    postPatch ? "", ...
  }: {
    postPatch = postPatch + ''
      substituteInPlace src/rviz_rendering/render_system.cpp \
        --replace-fail /opt/rviz_ogre_vendor ""
    '';
  });

  sdformat-vendor = lib.patchGzAmentVendorGit rosSuper.sdformat-vendor {
    version = "15.1.1";
    hash = "sha256-4/0pVaev++v0+wHQiGeTl8XtTDzh2li32dND0EjfjwA=";
  };

  shared-queues-vendor = lib.patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    hash = "sha256-TyFt3d78GidhDGD17KgjAaZl/qvAcGJP8lmu4EOxpYg=";
  };

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
