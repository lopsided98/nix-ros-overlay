
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, builtin-interfaces, python-qt-binding, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-bag";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/lyrical/rqt_bag/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "468b365e3deba5155d120e8bb1616f819756e5e9b735767cc30cc6e580f8e1bf";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces python-qt-binding python3Packages.pyyaml rclpy rosbag2-py rosidl-runtime-py rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
