
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-msg";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/rolling/rqt_msg/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "0d9fff673fb42ee7ab8d4d1653cead1001cbd1a3b3e8e2201fe17d8b651b63ef";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
