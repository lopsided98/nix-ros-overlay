# Common overlay for ROS distros using Qt5. At time of writing Humble, Jazzy, Kilted.
self:
rosSelf: rosSuper: with rosSelf.lib; {
  # keep-sorted start block=yes

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
  pcl = self.pclWithQt5;
  python-qt-binding = rosSuper.python-qt-binding.overrideAttrs ({
    propagatedBuildInputs ? [], ...
  }: {
    propagatedBuildInputs = propagatedBuildInputs ++ (with rosSelf.pythonPackages; [
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
  rqt-bag = rosSuper.rqt-bag.overrideAttrs ({
    nativeBuildInputs ? [], postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
        wrapQtApp "$out/bin/rqt_bag"
        wrapQtApp "$out/lib/rqt_bag/rqt_bag"
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
  rqt-robot-steering = rosSuper.rqt-robot-steering.overrideAttrs ({
    nativeBuildInputs ? [], postFixup ? "", ...
  }: {
    dontWrapQtApps = false;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    postFixup = postFixup + ''
        wrapQtApp "$out/lib/rqt_robot_steering/rqt_robot_steering"
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
  # Use rtabmap derivation from nixpkgs, but with Qt5 and the version from ROS.
  rtabmap = (self.rtabmap.override {
    pcl = rosSelf.pcl;
    qt6 = self.qt5;
    vtkWithQt6 = rosSelf.vtk;
  }).overrideAttrs ({
    propagatedBuildInputs ? [], nativeBuildInputs ? [], buildInputs ? [], ...
  }: {
    inherit (rosSuper.rtabmap)
      pname
      version
      src;
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    propagatedBuildInputs = propagatedBuildInputs ++ [
      self.librealsense
      self.octomap
    ];
  });
  rtabmap-viz = rosSuper.rtabmap-viz.overrideAttrs ({
    nativeBuildInputs ? [],  ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
  });
  # See also overrides in ros2-overlay.nix.
  rviz2 = rosSuper.rviz2.overrideAttrs ({
    nativeBuildInputs ? [], qtWrapperArgs ? [], ...
  }: {
    nativeBuildInputs = nativeBuildInputs ++ [ self.qt5.wrapQtAppsHook ];
    qtWrapperArgs = qtWrapperArgs ++ [
      # Use X11 by default in RViz2.
      # https://github.com/ros-visualization/rviz/issues/1442
      "--set-default QT_QPA_PLATFORM xcb"
    ];
  });
  vtk = self.vtkWithQt5;

  # keep-sorted end
}
