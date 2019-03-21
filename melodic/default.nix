self: super: let 

  rosSuper = {
    callPackage = self.newScope rosSelf;
    
    buildRosPackage = rosSelf.callPackage ../build-ros-package { };
    
    buildEnv = import ../build-env {
      inherit (self) stdenv runCommand makeWrapper;
      inherit (rosSelf) python;
    };
    
    python = self.python3;
    pythonPackages = self.python3Packages;
    
    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  } // import ./generated.nix rosSelf {};

  patchBoostPython = let
    pythonVersion = rosSelf.python.sourceVersion;
    pythonLib = "python${pythonVersion.major}${pythonVersion.minor}";
  in ''
    sed -Ei CMakeLists.txt \
      -e 's/(Boost [^)]*)python[^ )]*([ )])/\1${pythonLib}\2/'
  '';

  rosSelf = rosSuper // {
    # ROS package overrides/fixups

    catkin = rosSuper.catkin.overrideDerivation (old: {
      postPatch = ''
        patchShebangs cmake
        substituteInPlace cmake/templates/python_distutils_install.sh.in \
          --replace /usr/bin/env "${self.coreutils}/bin/env"
      '';
      setupHook = self.callPackage ../catkin-setup-hook { } "melodic";
    });
    
    python-qt-binding = rosSuper.python-qt-binding.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = ''
        sed -e "s#'-I', sip_dir,#'-I', '${rosSelf.pythonPackages.pyqt5}/share/sip/PyQt5',#" \
            -e "s#qtconfig\['QT_INSTALL_HEADERS'\]#'${self.qt5.qtbase.dev}/include'#g" \
            -i cmake/sip_configure.py
      '' + postPatch;
    });
    
    qt-gui-cpp = rosSuper.qt-gui-cpp.overrideDerivation ({
      nativeBuildInputs ? [], ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ rosSelf.pythonPackages.sip ];
      
      # Prevent /build RPATH references
      preFixup = "rm -r devel/lib";
    });
    
    rqt-gui = rosSuper.rqt-gui.overrideDerivation ({
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
      nativeBuildInputs = nativeBuildInputs ++ [ self.makeWrapper ];
    
      postFixup = ''
        wrapProgram $out/bin/rqt \
          --set QT_PLUGIN_PATH "${self.qt5.qtbase.bin}/${self.qt5.qtbase.qtPluginPrefix}"
      '' + postFixup;
    });
    
    actionlib = rosSuper.actionlib.overrideDerivation ({
      patches ? [], ...
    }: {
      patches = patches ++ [
        (self.fetchpatch {
          url = https://github.com/ros/actionlib/commit/677e952fcbfe49e6e4c5b835357f88740f49c6ff.patch;
          sha256 = "0825w6r5kzz9y7syrrn6q1v0fjrd8qhn11rq2n4kc064702r8jf7";
        })
      ];
    });
    
    dynamic-reconfigure = rosSuper.dynamic-reconfigure.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace cmake/setup_custom_pythonpath.sh.in \
          --replace '#!/usr/bin/env sh' '#!${self.stdenv.shell}'
        patchShebangs cfg
      '';
    });
    
    gazebo-ros = rosSuper.gazebo-ros.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs cfg
      '';
    });
    
    camera-calibration-parsers = rosSuper.camera-calibration-parsers.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });
    
    urdf = rosSuper.urdf.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });
    
    cv-bridge = rosSuper.cv-bridge.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + patchBoostPython;
    });
    
    gazebo-plugins = rosSuper.gazebo-plugins.overrideDerivation ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        patchShebangs cfg
      '';
    });
  };
in {
  rosPackages.melodic = rosSelf;
}
