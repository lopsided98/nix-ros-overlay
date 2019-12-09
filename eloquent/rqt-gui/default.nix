
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-lint-auto, qt-gui, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-gui";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/eloquent/rqt_gui/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "73d7e0f20346b227fb53644b2869c461ddaa6050040cbe94b9c392d2060a4e12";
  };

  buildType = "ament_python";
  buildInputs = [ qt-gui ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ qt-gui rclpy python3Packages.catkin-pkg ament-index-python python-qt-binding ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
