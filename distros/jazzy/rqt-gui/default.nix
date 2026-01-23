
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-rqt-gui";
  version = "1.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/jazzy/rqt_gui/1.6.3-1.tar.gz";
    name = "1.6.3-1.tar.gz";
    sha256 = "242f3899f1b9de5df48e747ceb5fe16f38196033265e887f57696fec116855bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
