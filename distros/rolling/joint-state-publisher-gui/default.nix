
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-rolling-joint-state-publisher-gui";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/rolling/joint_state_publisher_gui/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "1173429a400a36933aa6179cf9b79cf9608009107813ee5d324f8a80fa0dc81f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
