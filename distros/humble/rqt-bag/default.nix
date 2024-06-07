
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-bag";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/humble/rqt_bag/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "07650ac319c2145ad9a088919f66524325f386ca09c77eeb1118da5fc5b9f8b5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
