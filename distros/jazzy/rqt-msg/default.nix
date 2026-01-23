
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-msg";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/jazzy/rqt_msg/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "3b849aa639ccaa74d8e3e39858ac2b89b1bebfc41af36f07ee248c45f4635260";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
