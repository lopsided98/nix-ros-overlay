
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, builtin-interfaces, python-qt-binding, python3Packages, rclpy, rosbag2-py, rosidl-runtime-py, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-bag";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/rolling/rqt_bag/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "3f2b78ef80b3c2c779b8b885a494c2e0f767d44412f480652bfd704ad9ca24d4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces python-qt-binding python3Packages.pyyaml rclpy rosbag2-py rosidl-runtime-py rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
