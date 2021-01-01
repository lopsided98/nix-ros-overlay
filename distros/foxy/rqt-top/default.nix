
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-foxy-rqt-top";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_top-release/archive/release/foxy/rqt_top/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f5eeca2a342a2275facc5e35a5099840ad99cb28b26c694afe3fac67dfa49289";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python-qt-binding python3Packages.psutil rclpy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RQT plugin for monitoring ROS processes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
