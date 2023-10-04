self:
rosSelf: rosSuper: with rosSelf.lib; {

  # Fix usages of global Boost placeholders
  # https://github.com/ros/actionlib/pull/197
  actionlib = rosSuper.actionlib.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros/actionlib/commit/d675dd75d9080d2832591e0220d19e0f0d981446.patch";
      stripLen = 1;
      includes = [ "include/*" ];
      hash = "sha256-bB8PkiDisgBgZoDyieiT1dSQK/xSfG8ZZOJyigX0SYY=";
    }) ];
  });

  catkin = rosSuper.catkin.overrideAttrs ({
    propagatedBuildInputs ? [],
    patches ? [],
    postPatch ? "", ...
  }: let
    setupHook = rosSelf.callPackage ./catkin-setup-hook { };
  in {
    propagatedBuildInputs = [ self.cmake setupHook ] ++ propagatedBuildInputs;

    patches = [
      # Fix compatibility with setuptools 61
      # https://github.com/ros/catkin/pull/1176
      (self.fetchpatch {
        url = "https://github.com/ros/catkin/commit/e082348c4992e1850ba5e2bd02bbd7bd0c4c4b82.patch";
        hash = "sha256-NNdV30gNWBf7p8IjyCmnvz9MnU4zFkd4aaXNjs411MA=";
      })
    ];

    postPatch = postPatch + ''
      patchShebangs cmake
      substituteInPlace cmake/templates/python_distutils_install.sh.in \
        --replace /usr/bin/env "${self.coreutils}/bin/env"
    '';
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

  costmap-converter = rosSuper.costmap-converter.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      # Fix build with OpenCV 4.7.0
      # https://github.com/rst-tu-dortmund/costmap_converter/pull/41
      (self.fetchpatch {
        url = "https://github.com/lopsided98/costmap_converter/commit/cb6af72f331a881fb399e651d6c9aaaf536a63e3.patch";
        hash = "sha256-ifpALB/poc8rFeuLGXz5YPcZT37hex1pwG+6G6V/FtA=";
      })
    ];
  });

  fcl-catkin = patchVendorUrl rosSuper.fcl-catkin {
    url = "https://github.com/flexible-collision-library/fcl/archive/v0.6.1.zip";
    sha256 = "0nryr4hg3lha1aaz35wbqr42lb6l8alfcy6slj2yn2dgb5syrmn2";
  };

  libphidgets = patchVendorUrl rosSuper.libphidgets {
    url = "https://www.phidgets.com/downloads/phidget21/libraries/linux/libphidget/libphidget_2.1.8.20151217.tar.gz";
    sha256 = "0lpaskqxpklm05050wwvdqwhw30f2hpzss8sgyvczdpvvqzjg4vk";
  };

  map-server = rosSuper.map-server.overrideAttrs ({
    nativeBuildInputs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.pkg-config ];
  });

  roscpp = patchBoostSignals rosSuper.roscpp;

  rqt-console = rosSuper.rqt-console.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_console"
    '';
  });

  rqt-image-view = rosSuper.rqt-image-view.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_image_view"
    '';
  });

  rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_plot"
    '';
  });

  rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_shell"
    '';
  });

  rqt-top = rosSuper.rqt-top.overrideAttrs ({
    nativeBuildInputs ? [], postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rqt_top/rqt_top"
    '';
  });

  rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
    postFixup ? "", ...
  }: {
    postFixup = postFixup + ''
      wrapQtApp "$out/bin/rqt_topic"
    '';
  });

  # rviz does not support shiboken/pyside2 and SIP4 is broken with the latest
  # pyqt5. This applies a patch to make pyqt5 compatible with SIP 4 and uses
  # SIP 4 with python-qt-binding for rviz only.
  rviz = (rosSuper.rviz.override {
    python-qt-binding = (rosSuper.python-qt-binding.override {
      python3Packages = rosSelf.python3Packages.overrideScope (pyFinal: pyPrev: {
        pyqt5 = pyPrev.pyqt5.overrideAttrs ({
          patches ? [], ...
        }: {
          patches = patches ++ [ (self.fetchpatch {
            url = "https://aur.archlinux.org/cgit/aur.git/plain/restore-sip4-support.patch?h=python-pyqt5-sip4&id=6e712e6c588d550a1a6f83c1b37c2c9135aae6ba";
            hash = "sha256-NfMe/EK1Uj88S82xZSm+A6js3PK9mlgsaci/kinlsy8=";
          }) ];
        });
      });
    }).overrideAttrs({
      propagatedNativeBuildInputs ? [],
      postPatch ? "", ...
    }: {
      propagatedNativeBuildInputs = with rosSelf.pythonPackages;
        (rosSelf.lib.subtractLists [ shiboken2 pyside2 ] propagatedNativeBuildInputs)
        ++ [ sip_4 ];
      postPatch = ''
        sed -e "1 i\\import PyQt5" \
            -e "s#sipconfig\._pkg_config\['default_mod_dir'\], 'PyQt5'#PyQt5.__path__[0]#" \
            -i cmake/sip_configure.py
      '' + postPatch;
    });
  }).overrideAttrs ({
    nativeBuildInputs ? [],
    postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
      wrapQtApp "$out/lib/rviz/rviz"
    '';
  });

  swri-transform-util = (rosSuper.swri-transform-util.override {
    # PROJ 8 finally removed the deprecated proj_api.h header
    proj = self.proj_7;
  }).overrideAttrs ({
    CXXFLAGS ? "", ...
  }: {
    CXXFLAGS = CXXFLAGS + " -DACCEPT_USE_OF_DEPRECATED_PROJ_API_H";
  });
}
