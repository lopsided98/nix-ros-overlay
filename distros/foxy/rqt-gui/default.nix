
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, ament-lint-auto, ament-lint-common, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-foxy-rqt-gui";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/foxy/rqt_gui/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "143c2a4dbda33155814440abbc40a7cdd12bcee169ead22a56bfe9e085d52f11";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
