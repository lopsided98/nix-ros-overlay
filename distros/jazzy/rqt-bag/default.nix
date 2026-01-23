
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, python-qt-binding, python3Packages, rclpy, rosbag2-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-bag";
  version = "1.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/jazzy/rqt_bag/1.5.6-1.tar.gz";
    name = "1.5.6-1.tar.gz";
    sha256 = "b0a1fdd2b3c692c99e1913af24bd85c5ce62600d110136159392405840bdea76";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy rosbag2-py rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
