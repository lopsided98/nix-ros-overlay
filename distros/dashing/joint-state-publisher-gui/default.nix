
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-dashing-joint-state-publisher-gui";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/dashing/joint_state_publisher_gui/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fdc9c350e4bc32ecf23b87f1c6231e5eb90b6884f6a635fdb0abe6883e2b1af1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
