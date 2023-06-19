
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-iron-rqt-bag";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/iron/rqt_bag/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "cb8bf65e58723d5c868cfa25a11ce4d730869b5cf2e419c381923b6b54f64914";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
