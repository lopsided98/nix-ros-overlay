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

  foonathan-memory-vendor = patchExternalProjectGit rosSuper.foonathan-memory-vendor {
    url = "https://github.com/foonathan/memory.git";
    rev = "v0.7-3";
    fetchgitArgs.hash = "sha256-nLBnxPbPKiLCFF2TJgD/eJKJJfzktVBW3SRW2m3WK/s=";
  };

  gazebo = self.gazebo_11;

  google-benchmark-vendor = lib.patchExternalProjectGit rosSuper.google-benchmark-vendor {
    url = "https://github.com/google/benchmark.git";
    rev = "0d98dba29d66e93259db7daa53a9327df767a415";
    fetchgitArgs.hash = "sha256-yUiFxi80FWBmTZgqmqTMf9oqcBeg3o4I4vKd4djyRWY=";
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

  rviz-ogre-vendor = rosSuper.rviz-ogre-vendor.overrideAttrs ({
    postPatch ? "", ...
  }: let
    ogre = self.fetchFromGitHub rec {
      name = "${repo}-${rev}";
      owner = "OGRECave";
      repo = "ogre";
      rev = "v1.12.10";
      hash = "sha256-Z0ixdSmkV93coBBVZ5R3lPLfVMXRfWsFz/RsSyqPWFY=";
    };
    ogreTar = let
      version = "1.79";
      imgui = self.fetchFromGitHub rec {
        name = "${repo}-${version}";
        owner = "ocornut";
        repo = "imgui";
        rev = "v${version}";
        hash = "sha256-GIVhZ8Q7WebfHeKeJdVABXrTT26FOS7updncbv2LRnQ=";
      };
      imguiTar = lib.tarSource {
        hash = "sha256-TmkxzGLNo40swbFO9YT7RnHP/6ORxr78o+CH9TA5OfM=";
      } imgui;
    in lib.tarSource {
      hook = ''
        substituteInPlace Components/Overlay/CMakeLists.txt \
          --replace-fail ${lib.escapeShellArg imgui.url} file://${lib.escapeShellArg imguiTar}
      '';
    } ogre;
  in {
    postPatch = postPatch + ''
      substituteInPlace CMakeLists.txt \
        --replace-fail 'https://github.com/${ogre.owner}/${ogre.repo}/archive/${ogre.rev}.zip' ${lib.escapeShellArg ogreTar} \
        --replace-fail c1b870955efddf539385094e9034e7f7 fcc1176585a7feb9f23c7900182a1f32
    '';
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
}
