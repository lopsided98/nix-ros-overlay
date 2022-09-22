# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  ament-cmake-export-targets = rosSuper.ament-cmake-export-targets.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Support new target export template introduced with CMake 3.24
      (self.fetchpatch {
        url = "https://github.com/ament/ament_cmake/commit/ca8c26ea3c89e69c0c636b7cd0c088674c689f5f.patch";
        stripLen = 1;
        sha256 = "sha256-ATdzHaD+3R3rhplaNzkEQBRqpkQDHVJLiB2oNlzIjm4=";
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

  libyaml-vendor = patchVendorGit rosSuper.libyaml-vendor {
    url = "https://github.com/yaml/libyaml.git";
    fetchgitArgs = {
      rev = "2c891fc7a770e8ba2fec34fc6b545c672beb37e6";
      hash = "sha256-S7PnooyfyAsIiRAlEPGYkgkVACGaBaCItuqOwrq2+qM=";
    };
  };

  rviz-ogre-vendor = patchVendorUrl rosSuper.rviz-ogre-vendor {
    url = "https://github.com/OGRECave/ogre/archive/v1.12.1.zip";
    sha256 = "1iv6k0dwdzg5nnzw2mcgcl663q4f7p2kj7nhs8afnsikrzxxgsi4";
  };
}
