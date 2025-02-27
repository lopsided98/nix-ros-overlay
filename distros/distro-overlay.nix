{ version, distro }:
self: super:
let
  pythonOverridesFor = with self.lib; prevPython: prevPython // {
    pkgs = prevPython.pkgs.overrideScope (pyFinal: pyPrev: {
      wxPython = pyFinal.wxPython_4_2;

      # ROS is not compatible with empy 4
      empy = pyFinal.empy_3;
    });
  };

  base = rosSelf: rosSuper: {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit self rosSelf; };

    callPackage = self.newScope rosSelf;

    buildRosPackage = rosSelf.callPackage ./build-ros-package {
      rosVersion = version;
      rosDistro = distro;
    };

    buildEnv = rosSelf.callPackage ./build-env {
      inherit (self) buildEnv;
    };

    python3 = pythonOverridesFor rosSelf.rosPython or self.python3;
    python3Packages = rosSelf.python3.pkgs;

    boost = self.boost.override {
      python = rosSelf.python;
      enablePython = true;
    };
  };

  mrptOverrides = rosSelf: rosSuper:
    let
      patchMrptExternalProjectGit = pkg:
        with rosSuper.lib;
        patchExternalProjectGit pkg {
          url = "https://github.com/MRPT/mrpt.git";
          originalRev = "\\\\\${MRPT_VERSION_TO_DOWNLOAD}";
          # CMakeLists.txt sets MRPT_VERSION_TO_DOWNLOAD to the
          # version from package.xml
          rev = head (splitString "-" pkg.version); # Ignore ROS release such as "-r1".
          fetchgitArgs.hash = "sha256-w9LxOtbXw01B2i4aqbhAIjjDwHzC+OvZbcZG/Pyn71Q=";
        };
    in rosSuper.lib.genAttrs [
      "mrpt-apps"
      "mrpt-libapps"
      "mrpt-libbase"
      "mrpt-libgui"
      "mrpt-libhwdrivers"
      "mrpt-libmaps"
      "mrpt-libmath"
      "mrpt-libnav"
      "mrpt-libobs"
      "mrpt-libopengl"
      "mrpt-libposes"
      "mrpt-libros-bridge"
      "mrpt-libslam"
      "mrpt-libtclap"
    ] (name: patchMrptExternalProjectGit rosSuper.${name});

  overrides = rosSelf: rosSuper: with rosSelf.lib; {
    # ROS package overrides/fixups

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    joint-state-publisher-gui = rosSuper.joint-state-publisher-gui.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/joint_state_publisher_gui/joint_state_publisher_gui"
      '';
    });

    librealsense2 = rosSuper.librealsense2.overrideAttrs ({
      buildInputs ? [], ...
    }: {
      buildInputs = buildInputs ++ [ self.glfw self.libGLU ];
    });

    mapviz = rosSuper.mapviz.overrideAttrs ({
      nativeBuildInputs ? [],
      postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/mapviz/mapviz"
      '';
    });

    mavlink = rosSuper.mavlink.overrideAttrs ({
      postPatch ? "", ...
    }: {
      postPatch = postPatch + ''
        substituteInPlace CMakeLists.txt --replace-fail /usr/bin/env '${self.buildPackages.coreutils}/bin/env'
        patchShebangs pymavlink/tools/mavgen.py
      '';
      ROS_PYTHON_VERSION = if rosSelf.python.isPy3k then 3 else 2;
    });

    osqp-vendor = pipe rosSuper.osqp-vendor [
      (pkg: pkg.overrideAttrs ({
        preInstall ? "", ...
      }: {
        # osqp installs into both lib/cmake/ and lib64/cmake/ which is
        # problematic because moveLib64 doesn't attempt to merge overlapping
        # directories but fails instead. Here we do the merge manually.
        preInstall = preInstall + ''
          mkdir -p ./osqp_install/lib/cmake/osqp
          mv ./osqp_install/lib64/cmake/osqp/* ./osqp_install/lib/cmake/osqp
          rm -r ./osqp_install/lib64/cmake
        '';
      }))

      (pkg: patchExternalProjectGit pkg {
        url = "https://github.com/osqp/osqp.git";
        rev = "v0.6.2";
        revVariable = "git_tag";
        fetchgitArgs = {
          hash = "sha256-0BbUe1J9qzvyKDBLTz+pAEmR3QpRL+hnxZ2re/3mEvs=";
        };
      })
    ];

    ompl = rosSuper.ompl.overrideAttrs ({
      patches ? [], ...
    }: {
      patches = patches ++ [
        # Fix pkg-config paths
        (self.fetchpatch {
          url = "https://github.com/ompl/ompl/commit/d4e26fc3d86cae0c36941a10bf0307e02526db44.patch";
          hash = "sha256-sAQLrWHoR/DhHk8TtUEy8E8VXqrvtXl2BGS5UvElJl8=";
        })
      ];
    });

    plotjuggler = (rosSuper.plotjuggler.override {
      # plotjuggler is not yet compatible with newer versions
      protobuf = self.protobuf_23;
    }).overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/plotjuggler/plotjuggler"
      '';
    });

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
    }).overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = propagatedBuildInputs ++ (with rosSelf.pythonPackages; [
        pyside2
        sip4
      ]);

      dontWrapQtApps = true;

      setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';

      postPatch = ''
        sed -e "1 i\\import PyQt5" \
            -e "s#sipconfig\._pkg_config\['default_mod_dir'\], 'PyQt5'#PyQt5.__path__[0]#" \
            -e "s#with open(os.path.join(tmpdirname, 'QtCore', 'QtCoremod.sip'), 'w') as outfp:##" \
            -e "s#outfp.write(output)##" \
            -i cmake/sip_configure.py
      '';
    });

    rqt-console = rosSuper.rqt-console.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_console/rqt_console"
      '';
    });

    rqt-graph = rosSuper.rqt-graph.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_graph"
        wrapQtApp "$out/lib/rqt_graph/rqt_graph"
      '';
    });

    rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt"
        wrapQtApp "$out/lib/rqt_gui/rqt_gui"
      '';
    });

    rqt-image-view = rosSuper.rqt-image-view.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_image_view/rqt_image_view"
      '';
    });

    rqt-msg = rosSuper.rqt-msg.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_msg/rqt_msg"
      '';
    });

    rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_plot/rqt_plot"
      '';
    });

    rqt-publisher = rosSuper.rqt-publisher.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_publisher/rqt_publisher"
      '';
    });

    rqt-py-console = rosSuper.rqt-py-console.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_py_console/rqt_py_console"
      '';
    });

    rqt-reconfigure = rosSuper.rqt-reconfigure.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_reconfigure/rqt_reconfigure"
      '';
    });

    rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_robot_monitor/rqt_robot_monitor"
      '';
    });

    rqt-service-caller = rosSuper.rqt-service-caller.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_service_caller/rqt_service_caller"
      '';
    });

    rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_shell/rqt_shell"
      '';
    });

    rqt-srv = rosSuper.rqt-srv.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_srv/rqt_srv"
      '';
    });

    rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_topic/rqt_topic"
      '';
    });

    turtlesim = rosSuper.turtlesim.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/turtlesim/turtlesim_node"
      '';
    });
  } // (mrptOverrides rosSelf rosSuper);

  otherSplices = {
    selfBuildBuild = self.pkgsBuildBuild.rosPackages.${distro};
    selfBuildHost = self.pkgsBuildHost.rosPackages.${distro};
    selfBuildTarget = self.pkgsBuildTarget.rosPackages.${distro};
    selfHostHost = self.pkgsHostHost.rosPackages.${distro};
    selfTargetTarget = self.pkgsTargetTarget.rosPackages.${distro} or {};
  };

  keep = rosSelf: {
    inherit (rosSelf) lib buildRosPackage;
  };
in self.lib.makeScopeWithSplicing
  self.splicePackages
  self.newScope
  otherSplices
  keep
  (_: {})
  (rosSelf: self.lib.composeManyExtensions ([
    base
    (import (./. + "/${distro}/generated.nix"))
    overrides
  ]
  ++ self.lib.optional (version == 1) (import ./ros1-overlay.nix self)
  ++ self.lib.optional (version == 2) (import ./ros2-overlay.nix self)
  ++ [
    (import (./. + "/${distro}/overrides.nix") self)
  ]) rosSelf {})
