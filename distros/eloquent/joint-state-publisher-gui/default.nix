
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-joint-state-publisher-gui";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/eloquent/joint_state_publisher_gui/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8635cad96c5dc2d43d81c23ece1dafd7ef1517f5b9b34570496f40a20df100f5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
