# Common overlay for ROS distros using Qt5. At time of writing Humble, Jazzy, Kilted.
self:
rosSelf: rosSuper: with rosSelf.lib; {
  # keep-sorted start block=yes

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

  # keep-sorted end
}
