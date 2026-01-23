
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-kilted-joint-state-publisher-gui";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/kilted/joint_state_publisher_gui/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "df80a9c3273d322ed33d6674ca28d93c7f156d6146a6978dfd95865459a1a68b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
