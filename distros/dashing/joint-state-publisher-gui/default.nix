
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-dashing-joint-state-publisher-gui";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/dashing/joint_state_publisher_gui/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "75831c47196ff1d6ef0d8968d015ad94ae76602d9089ca372d431ca66f01a05f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
