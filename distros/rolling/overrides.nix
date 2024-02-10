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
      rev = "0d98dba29d66e93259db7daa53a9327df767a415";
      hash = "sha256-yUiFxi80FWBmTZgqmqTMf9oqcBeg3o4I4vKd4djyRWY=";
    };
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

  iceoryx-posh = (lib.patchExternalProjectGit rosSuper.iceoryx-posh {
    url = "https://github.com/skystrife/cpptoml.git";
    file = "cmake/cpptoml/cpptoml.cmake.in";
    fetchgitArgs = {
      rev = "v0.1.1";
      sha256 = "0gxzzi4xbjszzlvmzaniayrd190kag1pmkn1h384s80cvqphbr00";
    };
  }).overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = "https://github.com/eclipse-iceoryx/iceoryx/commit/d4519632964794553791ef3f951ed47ca52ebbb6.patch";
        hash = "sha256-f4kITUql8uFSptFmu7LZGChlfDG63b0gmsRyHp1NsWw=";
        stripLen = 1;
      })
    ];
  });

  lely-core-libraries = lib.patchExternalProjectGit rosSuper.lely-core-libraries {
    url = "https://gitlab.com/lely_industries/lely-core.git";
    fetchgitArgs = {
      rev = "7824cbb2ac08d091c4fa2fb397669b938de9e3f5";
      sha256 = "sha256-Ykmnz/zlEXmkyRO9AHMprML7uKbNer2zu4i9PDHfgxw=";
      leaveDotGit = true;
    };
  };

  libphidget22 = lib.patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.13.20230224.tar.gz";
    sha256 = "sha256-HQeVEQUX6xjIBkcoh8r8hh3QtqHBBFJGxVW8R/a9d+M=";
  };

  mcap-vendor = lib.patchExternalProjectGit (lib.patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.1.0.tar.gz";
    hash = "sha256-HLKuny6RDusuk7OrcidE0YBbnaRXZOT9iHA7ZpQTNQ0=";
  }) {
    url = "https://github.com/lz4/lz4.git";
    fetchgitArgs = {
      rev = "d44371841a2f1728a3f36839fd4b7e872d0927d3";
      hash = "sha256-f7GZgOzUrkAfw1mqwlIKQQqDvkvIahGlHvq6AL+aAvA=";
    };
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
