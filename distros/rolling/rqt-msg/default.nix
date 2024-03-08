
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, pythonPackages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-msg";
  version = "1.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/rolling/rqt_msg/1.5.1-2.tar.gz";
    name = "1.5.1-2.tar.gz";
    sha256 = "69f6b71e0bad0242d7d2fe734f1ecbbb9413dab8836f160dcf4957289128c29a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
