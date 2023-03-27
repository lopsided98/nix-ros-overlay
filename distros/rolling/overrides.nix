# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
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

  iceoryx-posh = (patchVendorGit rosSuper.iceoryx-posh {
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

  libphidget22 = patchVendorUrl rosSuper.libphidget22 {
    url = "https://www.phidgets.com/downloads/phidget22/libraries/linux/libphidget22/libphidget22-1.9.20220203.tar.gz";
    sha256 = "sha256-CJ1ZC7ydrZzEsZChrKuWg4/d20r6szFWeQCctiKFLgY=";
  };

  mcap-vendor = patchVendorGit (patchVendorUrl rosSuper.mcap-vendor {
    url = "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v0.8.0.tar.gz";
    sha256 = "sha256-KDP3I0QwjqWGOfOzY6DPF2aVgK56tDX0PzsQTP9u9Ug=";
  }) {
    url = "https://github.com/lz4/lz4.git";
    fetchgitArgs = {
      rev = "d44371841a2f1728a3f36839fd4b7e872d0927d3";
      hash = "sha256-f7GZgOzUrkAfw1mqwlIKQQqDvkvIahGlHvq6AL+aAvA=";
    };
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.10.zip";
    sha256 = "sha256-lZDLywgShlWeWah7oTnyKBTqzN505LJKbQbgXRfJXlk=";
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
}
