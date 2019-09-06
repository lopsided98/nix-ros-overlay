{ distro, python }:
self: super:
with self.lib;
with import ./mk-overlay.nix { inherit (self) lib; };
let

  base = rosSelf: rosSuper: {
    callPackage = self.newScope rosSelf;

    buildRosPackage = rosSelf.callPackage ./build-ros-package { };

    buildEnv = rosSelf.callPackage ./build-env {
      inherit (self) buildEnv;
    };

    inherit python;
    pythonPackages = rosSelf.python.pkgs;

    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  };

  overrides = rosSelf: rosSuper: let
    patchBoostPython = let
      pythonVersion = rosSelf.python.sourceVersion;
      pythonLib = "python${pythonVersion.major}${pythonVersion.minor}";
    in ''
      sed -Ei CMakeLists.txt \
        -e 's/(Boost [^)]*)python[^ )]*([ )])/\1${pythonLib}\2/'
    '';

    patchVendorUrl = pkg: args: pkg.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = ''
        substituteInPlace CMakeLists.txt \
          --replace '${args.url}' '${self.fetchurl args}'
      '' + postPatch;
    });
  in {
    # ROS package overrides/fixups

    ament-cmake-core = rosSuper.ament-cmake-core.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = [ self.cmake rosSelf.ament-package ] ++ propagatedBuildInputs;
      setupHook = ./ament-cmake-core-setup-hook.sh;
    });

    camera-calibration-parsers = rosSuper.camera-calibration-parsers.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });

    catkin = rosSuper.catkin.overrideAttrs ({
      propagatedBuildInputs ? [],
      prePhases ? [],
      postPatch ? "", ...
    }: let
      setupHook = self.callPackage ./catkin-setup-hook { } distro;
    in {
      propagatedBuildInputs = [ self.cmake ] ++ propagatedBuildInputs;
      prePhases = prePhases ++ [ "setupPhase" ];
      # Catkin uses its own setup hook
      setupPhase = ''
        source "${setupHook}"
      '';

      postPatch = postPatch + ''
        patchShebangs cmake
        substituteInPlace cmake/templates/python_distutils_install.sh.in \
          --replace /usr/bin/env "${self.coreutils}/bin/env"
      '';
      inherit setupHook;
    });

    # Packages that depend on catkin-pip still fail because they try to
    # download from the internet, but it should work outside of Nix builds.
    catkin-pip = rosSuper.catkin-pip.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs cmake
        substituteInPlace cmake/scripts/path_prepend.sh \
          --replace /bin/sed "${self.gnused}/bin/sed"
        substituteInPlace cmake/catkin-pip-prefix.cmake.in \
          --replace NO_SYSTEM_ENVIRONMENT_PATH ""
      '';
    });

    cv-bridge = rosSuper.cv-bridge.overrideAttrs ({
      postPatch ? "",
      propagatedBuildInputs ? [], ...
    }: {
      postPatch = postPatch + patchBoostPython;
      propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
    });

    dynamic-reconfigure = rosSuper.dynamic-reconfigure.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace cmake/setup_custom_pythonpath.sh.in \
          --replace '#!/usr/bin/env sh' '#!${self.stdenv.shell}'
      '';
    });

    fmilibrary-vendor = patchVendorUrl rosSuper.fmilibrary-vendor {
      url = "https://jmodelica.org/fmil/FMILibrary-2.0.3-src.zip";
      sha256 = "16lx6355zskrb7wgw2bzdzms36pcjyl2ry03wgsac5215jg1zhjc";
    };

    gazebo-plugins = rosSuper.gazebo-plugins.overrideAttrs ({
      patches ? [], ...
    }:{
      patches = patches ++ [
        (self.fetchpatch {
          url = "https://github.com/ros-simulation/gazebo_ros_pkgs/commit/b756d784d4bdc45bf33b28ac6c0a01c15563e36c.patch";
          sha256 = "08lpkcda9yr3vjc2wxy5hzm99g7876d6402snac3mx5j7fa3w5i2";
          stripLen = 1;
        })
      ];
    });

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    libyaml-vendor = patchVendorUrl rosSuper.libyaml-vendor {
      url = "https://github.com/yaml/libyaml/archive/10c907871f1ccd779c7fccf6b81a62762b5c4e7b.zip";
      sha256 = "0v6ks4hpxmakgymcfvafynla76gl3866grgwf4vjdsb4rsvr13vx";
    };

    map-server = rosSuper.map-server.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.pkgconfig ];
    });

    message-relay = rosSuper.message-relay.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs scripts
      '';
    });

    python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
      propagatedNativeBuildInputs ? [],
      postPatch ? "", ...
    }: {
      propagatedNativeBuildInputs = propagatedNativeBuildInputs ++ [ rosSelf.pythonPackages.sip ];
      postPatch = ''
        sed -e "s#'-I', sip_dir,#'-I', '${rosSelf.pythonPackages.pyqt5}/share/sip/PyQt5',#" \
            -e "s#qtconfig\['QT_INSTALL_HEADERS'\]#'${self.qt5.qtbase.dev}/include'#g" \
            -i cmake/sip_configure.py
      '' + postPatch;

      setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';
    });

    rosidl-default-runtime = rosSuper.rosidl-default-runtime.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = [ rosSelf.rmw-fastrtps-cpp ] ++ propagatedBuildInputs;
    });

    rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.makeWrapper ];

      postFixup = ''
        wrapProgram $out/bin/rqt \
          --prefix QT_PLUGIN_PATH : "${self.qt5.qtbase.bin}/${self.qt5.qtbase.qtPluginPrefix}"
      '' + postFixup;
    });

    rviz = rosSuper.rviz.overrideAttrs ({
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.makeWrapper ];

      postFixup = ''
        wrapProgram $out/bin/rviz \
          --prefix QT_PLUGIN_PATH : "${self.qt5.qtbase.bin}/${self.qt5.qtbase.qtPluginPrefix}"
      '' + postFixup;
    });

    rviz-ogre-vendor = (patchVendorUrl rosSuper.rviz-ogre-vendor {
      url = "https://github.com/OGRECave/ogre/archive/v1.10.12.zip";
      sha256 = "1nafqazv396y97z0rgrn0dmkddq7y4zgfszvmi3aw6hr6zwyrpa3";
    }).overrideAttrs ({
      preFixup ? "", ...
    }: {
      dontFixCmake = true;
      preFixup = ''
        # Prevent /build RPATH references
        rm -r ogre_install
      '' + preFixup;
    });

    shared-queues-vendor = patchVendorUrl (patchVendorUrl rosSuper.shared-queues-vendor {
      url = "https://github.com/cameron314/concurrentqueue/archive/8f65a8734d77c3cc00d74c0532efca872931d3ce.zip";
      sha256 = "0cmsmgc87ndd9hiv187xkvjkn8fipn3hsijjc864h2lfcyigbxq1";
    }) {
      url = "https://github.com/cameron314/readerwriterqueue/archive/ef7dfbf553288064347d51b8ac335f1ca489032a.zip";
      sha256 = "1255n51y1bjry97n4w60mgz6b9h14flfrxb01ihjf6pwvvfns8ag";
    };

    tinydir-vendor = patchVendorUrl rosSuper.tinydir-vendor {
      url = "https://github.com/cxong/tinydir/archive/1.2.4.tar.gz";
      sha256 = "1qjwky7v4b9d9dmxzsybnhiz6xgx94grc67sdyvlp1d4kfkfsl4w";
    };

    uncrustify-vendor = patchVendorUrl rosSuper.uncrustify-vendor {
      url = "https://github.com/uncrustify/uncrustify/archive/uncrustify-0.68.1.tar.gz";
      sha256 = "04ndwhcn9iv3cy4p5wgh5z0vx2sywqlydyympn9m3h5458w1aijh";
    };

    urdf = rosSuper.urdf.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });

    yaml-cpp-vendor = patchVendorUrl rosSuper.yaml-cpp-vendor {
      url = "https://github.com/jbeder/yaml-cpp/archive/0f9a586ca1dc29c2ecb8dd715a315b93e3f40f79.zip";
      sha256 = "1g45f71mk4gyca550177qf70v5cvavlsalmg7x8bi59j6z6f0mgz";
    };
  };
in mkOverlay [
  base
  (import (./. + "/${distro}/generated.nix"))
  overrides
  (import (./. + "/${distro}/overrides.nix") self)
]
