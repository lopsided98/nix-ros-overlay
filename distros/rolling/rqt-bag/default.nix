
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, pythonPackages, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-bag";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/rolling/rqt_bag/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "94c94aef392b3d428386b096272d532a73d866730d3911b6c32b9f1cb9c49777";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
