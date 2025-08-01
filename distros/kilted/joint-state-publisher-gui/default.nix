
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-kilted-joint-state-publisher-gui";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/kilted/joint_state_publisher_gui/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "33c9b0737aaf56ad7a66df435542299f161c8089be176b0e0982f8407a5b407a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
