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
        let
          inherit (rosSuper.lib) head splitString patchExternalProjectGit;
          # CMakeLists.txt sets MRPT_VERSION_TO_DOWNLOAD to the
          # version from package.xml. Let's use version from Nix, which should be the same.
          rev = head (splitString "-" pkg.version); # Ignore ROS release such as "-r1".
        in
        (patchExternalProjectGit pkg {
          url = "https://github.com/MRPT/mrpt.git";
          originalRev = "\${MRPT_VERSION_TO_DOWNLOAD}";
          inherit rev;
          fetchgitArgs.hash = {
            "2.15.3" = "sha256-KNIT25C5psF4H8ragEV0cZmxCy7Mscxw5mU4X/4yS4k=";
          }.${rev};
        }).overrideAttrs ({ postPatch ? "", buildInputs ? [], ... }: {
          postPatch = postPatch + ''
            src=$(awk '/^URL/ { print gensub(/"/, "", "g", $2) }' CMakeLists.txt)
            read -r version < $src/version_prefix.txt
            if [[ $version != "${rev}" ]]; then
              echo "MRPT version mismatch: $version != "${rev}". Is fetchgitArgs.hash in patchMrptExternalProjectGit up to date?"
              exit 1
            fi
          '';
          # Work around problems reported in
          # https://github.com/MRPT/mrpt/pull/1338 and
          # https://github.com/MRPT/mrpt_ros/pull/5
          buildInputs = buildInputs ++ [ rosSelf.octomap or self.octomap ];
        });
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
      "mrpt-libslam"
      "mrpt-libtclap"
    ] (name: patchMrptExternalProjectGit rosSuper.${name});

  overrides = rosSelf: rosSuper: with rosSelf.lib; {
    # ROS package overrides/fixups

    # Some third-party packages are available in rodistro,
    # but have a better packaging in nixpkgs, so use it instead
    inherit (self.python3Packages) eigenpy hpp-fcl pinocchio ;

    gazebo-ros = rosSuper.gazebo-ros.overrideAttrs ({ ... }:{
      setupHook = ./gazebo-ros-setup-hook.sh;
    });

    gtsam = rosSuper.gtsam.overrideAttrs ({
      cmakeFlags ? [], ...
    }: {
      # Don't use vendored version of Eigen, which can collide with
      # Eigen version in dependent packages.
      cmakeFlags = cmakeFlags ++ [ "-DGTSAM_USE_SYSTEM_EIGEN=ON" ];
    });

    joint-state-publisher-gui = rosSuper.joint-state-publisher-gui.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
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
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
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
        fetchgitArgs.hash = "sha256-RYk3zuZrJXPcF27eMhdoZAio4DZ+I+nFaUEg1g/aLNk=";
      })
    ];

    plotjuggler = rosSuper.plotjuggler.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = ''
        wrapQtApp "$out/lib/plotjuggler/plotjuggler"
      '';
    });

    # Switch to Qt6 for python 3.13
    python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
      patches ? [], propagatedBuildInputs ? [], postPatch ? "", ...
    }: {
      patches = patches ++ [
        # ref. https://github.com/ros-visualization/python_qt_binding/pull/143
        (self.fetchpatch {
          name = "support-qt6.patch";
          url = "https://github.com/ros-visualization/python_qt_binding/commit/fa854d325ad4fa5f6e788d70b3ba9ccf9ee5c80f.patch";
          hash = "sha256-P/xScO83zRL7qtqRzLiHkQtCpYdcxOaXwWj/83GhFpk=";
        })
        (self.fetchpatch {
          name = "make-linters-happy.patch";
          url = "https://github.com/ros-visualization/python_qt_binding/commit/bd88c0d5d51add58e329c40bba20a7b04c3df063.patch";
          hash = "sha256-1YuTIUGDmgFZtz/1LoRIkayH9M84H5rs8QqhW9SnNAQ=";
        })
        (self.fetchpatch {
          name = "fixes.patch";
          url = "https://github.com/ros-visualization/python_qt_binding/commit/d710e1afb2ac0effed1e8d6ab90eee53354366bb.patch";
          hash = "sha256-+ou08BZCIhRMDi9GMyAOLmdoGJNZaqLpA7nMszZOFgg=";
        })
      ];
      # PySide6 libs are eg. PySide6/QtGui.abi3.so.1, not libpyside6_QtGui.abi3.so
      postPatch = postPatch + ''
        substituteInPlace cmake/pyside_config.py \
          --replace-fail \
            "return glob if sys.platform == 'win32' else 'lib' + glob" \
            "return glob" \
          --replace-fail \
            "return 'so.*'" \
            "return 'so*'" \
          --replace-fail \
            "'shiboken' in basename" \
            "'shiboken6' == os.path.basename(os.path.dirname(lib_name))" \
          --replace-fail \
            "'pyside6' in basename" \
            "'PySide6' == os.path.basename(os.path.dirname(lib_name))"
      '';
      propagatedBuildInputs = self.lib.lists.filter (p: p.name != "pyqt5") (propagatedBuildInputs ++ (with rosSelf.pythonPackages; [
        pyside6
        pyqt6-sip
        shiboken6
      ]));

      dontWrapQtApps = true;

      setupHook = self.writeText "python-qt-binding-setup-hook" ''
        _pythonQtBindingPreFixupHook() {
          # Prevent /build RPATH references
          rm -rf devel/lib
        }
        preFixupHooks+=(_pythonQtBindingPreFixupHook)
      '';
    });

    rqt-bag = rosSuper.rqt-bag.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_bag"
        wrapQtApp "$out/lib/rqt_bag/rqt_bag"
      '';
    });

    rqt-console = rosSuper.rqt-console.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_console/rqt_console"
      '';
    });

    rqt-graph = rosSuper.rqt-graph.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_graph/rqt_graph"
        if [[ -e "$out/bin/rqt_graph" ]]; then
          wrapQtApp "$out/bin/rqt_graph"
        else
          # Needed for kilted and later
          mkdir -p $out/bin
          ln -s "$out/lib/rqt_graph/rqt_graph" "$out/bin/rqt_graph"
        fi
      '';
    });

    rqt-gui = rosSuper.rqt-gui.overrideAttrs ({
      buildInputs ? [], nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      buildInputs = buildInputs ++ [ self.qt6.qtbase ];
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt"
        wrapQtApp "$out/lib/rqt_gui/rqt_gui"
      '';
    });

    qt-gui= rosSuper.qt-gui.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      propagatedBuildInputs = self.lib.lists.filter (p: p.name != "pyqt5") propagatedBuildInputs;
    });

    qt-gui-cpp = rosSuper.qt-gui-cpp.overrideAttrs (
      {
        patches ? [ ],
        propagatedBuildInputs ? [ ],
        nativeBuildInputs ? [ ],
        ...
      }:
      {
        patches = patches ++ [
          # ref. https://github.com/ros-visualization/qt_gui_core/pull/309, just to allow the other patch to apply
          (self.fetchpatch {
            url = "https://github.com/ros-visualization/qt_gui_core/commit/d07b80eac7657fe56b6581e94fa67b91056715a2.patch";
            hash = "sha256-99nUTiYqUm6R+YmM0hfk3+C3uyzHqmW8b8xkb+oM6TY=";
            stripLen = 1;
            revert = true;
          })
          # Qt 5 -> 6
          # ref. https://github.com/ros-visualization/qt_gui_core/pull/293
          (self.fetchpatch {
            url = "https://github.com/ros-visualization/qt_gui_core/commit/21941697c5584dc73968a8b50c51df2aef929562.patch";
            hash = "sha256-4MO4X0AyK9X7UsVBxVosR9bx+62tZgXgJ3a6n2q5E1A=";
            stripLen = 1;
          })
        ];
        nativeBuildInputs = nativeBuildInputs ++ [ self.breakpointHook ];
        propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.tinyxml2-vendor ]
        ++ (with rosSelf.pythonPackages; [
          pyside6
          pyqt6-sip
          shiboken6
        ]);
      }
    );

    rqt-image-view = rosSuper.rqt-image-view.overrideAttrs ({
      buildInputs ? [], nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      buildInputs = super.lib.lists.filter (p: p.pname != "qtbase") buildInputs;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_image_view/rqt_image_view"
      '';
    });

    rqt-msg = rosSuper.rqt-msg.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_msg/rqt_msg"
      '';
    });

    rqt-plot = rosSuper.rqt-plot.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_plot/rqt_plot"
      '';
    });

    rqt-publisher = rosSuper.rqt-publisher.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_publisher/rqt_publisher"
      '';
    });

    rqt-py-console = rosSuper.rqt-py-console.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_py_console/rqt_py_console"
      '';
    });

    rqt-reconfigure = rosSuper.rqt-reconfigure.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_reconfigure/rqt_reconfigure"
      '';
    });

    rqt-robot-monitor = rosSuper.rqt-robot-monitor.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_robot_monitor/rqt_robot_monitor"
      '';
    });

    rqt-service-caller = rosSuper.rqt-service-caller.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_service_caller/rqt_service_caller"
      '';
    });

    rqt-shell = rosSuper.rqt-shell.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_shell/rqt_shell"
      '';
    });

    rqt-srv = rosSuper.rqt-srv.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_srv/rqt_srv"
      '';
    });

    rqt-topic = rosSuper.rqt-topic.overrideAttrs ({
      nativeBuildInputs ? [], postFixup ? "", ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
      postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_topic/rqt_topic"
      '';
    });

    # Use rtabmap derivation from nixpkgs, but with the source from ROS.
    rtabmap = self.rtabmap.overrideAttrs ({
      propagatedBuildInputs ? [], ...
    }: {
      inherit (rosSuper.rtabmap)
        pname
        version
        src;
      propagatedBuildInputs = propagatedBuildInputs ++ [
        self.qt6.wrapQtAppsHook
        self.librealsense
        self.octomap
      ];
    });

    # TODO: Remove once onetbb appears in the locked nixpkgs version.
    onetbb = self.tbb_2022;

    turtlesim = rosSuper.turtlesim.overrideAttrs ({
      nativeBuildInputs ? [], ...
    }: {
      dontWrapQtApps = false;
      nativeBuildInputs = nativeBuildInputs ++ [ self.qt6.wrapQtAppsHook ];
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
  ++ self.lib.optional (version == 2) (import ./ros2-overlay.nix self)
  ++ [
    (import (./. + "/${distro}/overrides.nix") self)
  ]) rosSelf {})
