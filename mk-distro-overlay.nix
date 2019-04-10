{ distro, python }:

self: super: with self.lib; let

  applyOverlays = self: super: overlays: let
    curSuper = applyOverlays self super (init overlays);
  in if length overlays == 0 then super
     else curSuper // (last overlays) self curSuper;

  mkOverlay = overlays: let
    self = applyOverlays self {} overlays;
  in self;

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
      prePhases ? [],
      postPatch ? "", ...
    }: let
      setupHook = self.callPackage ./catkin-setup-hook { } distro;
    in {
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

    map-server = rosSuper.map-server.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.pkgconfig ];
    });

    microstrain-3dmgx2-imu = rosSuper.microstrain-3dmgx2-imu.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [
        (self.fetchpatch {
          url = https://github.com/k-okada/microstrain_3dmgx2_imu/commit/f06c83793e98318c4687e475e198bb08d039fca7.patch;
          sha256 = "0lk5p9qxsing6n8qyf17aq1qxdd4ilir0kd75lxkr3qvnby7d7hr";
        })
      ];
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
