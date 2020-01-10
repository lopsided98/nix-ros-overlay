
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, python-qt-binding, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-eloquent-rqt-console";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/eloquent/rqt_console/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "fc268867fa9eadb73a09922bdef34378b7b395e4025857361d8b7a7658b618e0";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
