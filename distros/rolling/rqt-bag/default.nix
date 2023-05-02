
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-bag";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/rolling/rqt_bag/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "488efb324f3af339c9627065804b55d5cf7b11c0e95857791a5ce57a30014f20";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
