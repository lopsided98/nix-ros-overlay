
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-galactic-rqt-gui";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/galactic/rqt_gui/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "6a5828b56c4e67f5e895b736ff002ad243bf596ff5e37801ecc070692c2d28a3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
