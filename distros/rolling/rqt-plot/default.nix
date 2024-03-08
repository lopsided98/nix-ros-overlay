
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, pythonPackages, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rqt-plot";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_plot-release/archive/release/rolling/rqt_plot/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "0516310dc7ca345d6211caa6e706475cb330b31d0bbc1e853598d0bb021d62e9";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.catkin-pkg python3Packages.matplotlib python3Packages.numpy qt-gui-py-common rclpy rqt-gui rqt-gui-py rqt-py-common std-msgs ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
