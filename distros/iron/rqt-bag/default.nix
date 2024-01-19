
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-bag";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/iron/rqt_bag/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "c98ae3c87a49f7041dbdc2a0d8c83ae3cbe20fcd9731d4f2d634b8101823e82f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
