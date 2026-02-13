# Common overlay for ROS distros using Qt5. At time of writing Humble, Jazzy, Kilted.
self:
rosSelf: rosSuper: with rosSelf.lib; {
  # keep-sorted start block=yes

  pcl = self.pclWithQt5;
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
