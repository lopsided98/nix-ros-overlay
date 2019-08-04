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
  in {
    # ROS package overrides/fixups

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

    gazebo-plugins = rosSuper.gazebo-plugins.overrideAttrs ({
      patches ? [], ...
    }:{
      patches = patches ++ [
        (self.fetchpatch {
          url = https://github.com/ros-simulation/gazebo_ros_pkgs/commit/b756d784d4bdc45bf33b28ac6c0a01c15563e36c.patch;
          sha256 = "08lpkcda9yr3vjc2wxy5hzm99g7876d6402snac3mx5j7fa3w5i2";
          stripLen = 1;
        })
      ];
    });

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

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

    urdf = rosSuper.urdf.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });
  };
in mkOverlay [
  base
  (import (./. + "/${distro}/generated.nix"))
  overrides
  (import (./. + "/${distro}/overrides.nix") self)
]
