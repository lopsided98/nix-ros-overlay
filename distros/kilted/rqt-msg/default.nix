
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-xmllint, python-qt-binding, python3Packages, rclpy, rosidl-runtime-py, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kilted-rqt-msg";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_msg-release/archive/release/kilted/rqt_msg/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "1d3568826584c9bb300df3f873bf5950edb23f2dc6e692da441580211863b8ce";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rclpy rosidl-runtime-py rqt-console rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "A Python GUI plugin for introspecting available ROS message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
