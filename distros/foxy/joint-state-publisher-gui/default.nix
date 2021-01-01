
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-foxy-joint-state-publisher-gui";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/foxy/joint_state_publisher_gui/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "59eb7392cf4604b0c3fcbe680ebbe42dd0b77d8a6ecdae83c721227880c6d040";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
