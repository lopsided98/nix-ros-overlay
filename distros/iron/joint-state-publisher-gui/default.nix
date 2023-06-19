
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-iron-joint-state-publisher-gui";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/iron/joint_state_publisher_gui/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "01c6f1bd6844b5d3f58f8f479fc05abb2e55ba728ddc49edc21703ec4e25f6aa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
