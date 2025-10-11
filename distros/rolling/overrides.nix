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

  foxglove-bridge = rosSuper.foxglove-bridge.overrideAttrs({
    postPatch ? "", ...
  }: {
    postPatch = let
      # SDK version from CMakeLists.txt. If the version doesn't match,
      # cmake fails with "Hash mismatch" and we can fix it here.
      FOXGLOVE_SDK_VERSION = "0.14.2";
      systemToPlatform = {
        "x86_64-linux" = "x86_64-unknown-linux-gnu";
        "aarch64-linux" = "aarch64-unknown-linux-gnu";
      };
      systemToHash = {
        "x86_64-linux" = "sha256-V0w84AbWEx1lGbQW8l7zfFsqByHvSciUKGx5paXgtPw=";
        "aarch64-linux" = "sha256-9U4+CJJqiIKpvIAxz7JKBAviY48e9OhyNvo63tGrKiM=";
      };
      FOXGLOVE_SDK_PLATFORM = systemToPlatform.${self.system};
      sdk = self.fetchurl {
        url = "https://github.com/foxglove/foxglove-sdk/releases/download/sdk%2Fv${FOXGLOVE_SDK_VERSION}/foxglove-v${FOXGLOVE_SDK_VERSION}-cpp-${FOXGLOVE_SDK_PLATFORM}.zip";
        hash = systemToHash.${self.system};
      };
    in
      # Does their CMakeLists.txt support cross compilation?
      postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail \
          'https://github.com/foxglove/foxglove-sdk/releases/download/sdk%2Fv''${FOXGLOVE_SDK_VERSION}/foxglove-v''${FOXGLOVE_SDK_VERSION}-cpp-''${FOXGLOVE_SDK_PLATFORM}.zip' \
          ${sdk}
      '';
  });

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

  gz-cmake-vendor = lib.patchAmentVendorGit rosSuper.gz-cmake-vendor { };

  gz-common-vendor = (lib.patchAmentVendorGit rosSuper.gz-common-vendor { }).overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    # https://github.com/gazebo-release/gz_common_vendor/pull/2
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  gz-dartsim-vendor = lib.patchAmentVendorGit rosSuper.gz-dartsim-vendor { };

  gz-fuel-tools-vendor = lib.patchAmentVendorGit rosSuper.gz-fuel-tools-vendor { };

  gz-gui-vendor = (lib.patchGzAmentVendorGit rosSuper.gz-gui-vendor { }).overrideAttrs ({
    postInstall ? "", ...
  }: {
    # "RPATH of binary libGrid3D.so contains a forbidden reference to
    # /build/" (see https://github.com/gazebosim/gz-gui/issues/627).
    postInstall = postInstall + ''
      ${self.patchelf}/bin/patchelf --remove-rpath $out/lib64/gz-gui-9/plugins/libGrid3D.so
    '';
  });

  gz-launch-vendor = lib.patchGzAmentVendorGit rosSuper.gz-launch-vendor { };

  gz-math-vendor = lib.patchAmentVendorGit rosSuper.gz-math-vendor { };

  gz-msgs-vendor = lib.patchAmentVendorGit rosSuper.gz-msgs-vendor { };

  gz-ogre-next-vendor = (lib.patchAmentVendorGit rosSuper.gz-ogre-next-vendor { }).overrideAttrs({ ... }: {
    dontFixCmake = true;
  });

  gz-physics-vendor = lib.patchAmentVendorGit rosSuper.gz-physics-vendor { };

  gz-plugin-vendor = lib.patchAmentVendorGit rosSuper.gz-plugin-vendor { };

  gz-rendering-vendor = lib.patchAmentVendorGit rosSuper.gz-rendering-vendor { };

  gz-sensors-vendor = lib.patchAmentVendorGit rosSuper.gz-sensors-vendor { };

  gz-sim-vendor = lib.patchGzAmentVendorGit rosSuper.gz-sim-vendor { };

  gz-tools-vendor = (lib.patchAmentVendorGit rosSuper.gz-tools-vendor { }).overrideAttrs({
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

  gz-transport-vendor = (lib.patchAmentVendorGit rosSuper.gz-transport-vendor { }).overrideAttrs({
    buildInputs ? [], ...
  }: {
    buildInputs = buildInputs ++ [ self.libsodium ];
  });

  gz-utils-vendor = lib.patchAmentVendorGit rosSuper.gz-utils-vendor { };

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

  plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix detection of system-provided liblz4 and zstd
      (self.fetchpatch {
        url = "https://github.com/facontidavide/PlotJuggler/pull/1200/commits/b41a4516d42a4806673a2199cacafc6fb1208ce0.patch";
        hash = "sha256-XqwO+WO16vSStea1/rWwrz8Yp2eMZri42UNrnjEkLH8=";
      })
    ];
  });

  rviz-ogre-vendor = lib.patchAmentVendorGit rosSuper.rviz-ogre-vendor {
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

  sdformat-vendor = lib.patchAmentVendorGit rosSuper.sdformat-vendor { };

  shared-queues-vendor = lib.patchVendorUrl rosSuper.shared-queues-vendor {
    url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
    hash = "sha256-TyFt3d78GidhDGD17KgjAaZl/qvAcGJP8lmu4EOxpYg=";
  };

  urdfdom = rosSuper.urdfdom.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom/pull/224
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom/commit/229c3ae867ba770dcade50b3ee520d81ff3b0413.patch";
        hash = "sha256-cfPnSux7qmTDngzwPYIayYIvddhOXfmSsvgKwltFT5Q=";
      })
    ];
  });

  urdfdom-headers = rosSuper.urdfdom-headers.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix CMake relative install dir assumptions
      # https://github.com/ros/urdfdom_headers/pull/90
      (self.fetchpatch {
        url = "https://github.com/ros/urdfdom_headers/commit/90efa6072dc239f78d37288a49f24d8aee1aaad2.patch";
        hash = "sha256-3q3K+fiINvS9eUrkHS3cgnn8GuA0Nz+FvVBMpsRAcFM=";
      })
    ];
  });

  zenoh-cpp-vendor = (lib.patchAmentVendorGit rosSuper.zenoh-cpp-vendor {}).overrideAttrs(finalAttrs: {
    nativeBuildInputs ? [], postPatch ? "", passthru ? {}, ...
  }: let
    outputHashes = {
      "zenoh-1.5.1" = "sha256-EeigSU9l7LCnSkm4/jP0WcdO3Hw9m91zUh8jzVXYhKw=";
    };
    zenoh-c-source = finalAttrs.passthru.amentVendorSrcs.zenoh_c_vendor;
  in {
    postPatch = postPatch + ''
      ln -s ${zenoh-c-source}/Cargo.lock Cargo.lock
    '';
    nativeBuildInputs = nativeBuildInputs ++ [
      self.rustPlatform.cargoSetupHook
      self.rustc
    ];
    cargoDeps = self.rustPlatform.importCargoLock {
      lockFile = "${zenoh-c-source}/Cargo.lock";
      inherit outputHashes;
    };

    # Patch the build.rs script to be able to build internal
    # opaque-types crate without network access.
    passthru = lib.recursiveUpdate passthru {
      amentVendorSrcs.zenoh_c_vendor = let
        src = passthru.amentVendorSrcs.zenoh_c_vendor;
      in
        self.applyPatches {
          inherit src;
          name = src.rev;
          patches = [ ./zenoh-cpp-vendor/zenoh-c.patch ];
        };
    };

    # Prepare vendored dependencies for internal opaque-types crate.
    # Execute in subshell to not change variables set by the normal
    # cargoSetupPostUnpackHook.
    preBuild = ''
      (
        mkdir nix-zenoh-opaque-types
        cd nix-zenoh-opaque-types
        cargoDeps=${self.rustPlatform.importCargoLock {
          lockFile = "${zenoh-c-source}/build-resources/opaque-types/Cargo.lock";
          inherit outputHashes;
        }}
        cargoSetupPostUnpackHook
      )
      # Export information for use by our patched build.rs script.
      export NIX_ZENOH_OPAQUE_TYPES_CARGO_CONFIG=$PWD/nix-zenoh-opaque-types/.cargo/config.toml
    '';
  });
}
