
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-galactic-joint-state-publisher-gui";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/galactic/joint_state_publisher_gui/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "c09a538045d87b605c06cc9d0d00ca7a6054066f746734799c47eb5b9c439a01";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
