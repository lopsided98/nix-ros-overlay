
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-msg";
  version = "1.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/rolling/rqt_msg/1.7.2-2.tar.gz";
    name = "1.7.2-2.tar.gz";
    sha256 = "bf94c5f68cac19d15d735bb2de252230a70dd3b0ea24acca11fb76761a1b9854";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
