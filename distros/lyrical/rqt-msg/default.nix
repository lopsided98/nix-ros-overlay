
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-msg";
  version = "1.7.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/lyrical/rqt_msg/1.7.2-3.tar.gz";
    name = "1.7.2-3.tar.gz";
    sha256 = "b9f4c0fd79b606eb4b670bfa435d3520945aadb3887a4f3e25d6d886063cd6a0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
