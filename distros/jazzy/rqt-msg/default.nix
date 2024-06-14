
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, pythonPackages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-msg";
  version = "1.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/jazzy/rqt_msg/1.5.1-3.tar.gz";
    name = "1.5.1-3.tar.gz";
    sha256 = "96d4bceb00c6800a5e06f17be8e84743de4dc83c9fc76249e6335244e31cd108";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
