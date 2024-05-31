
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-joint-state-publisher-gui";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/jazzy/joint_state_publisher_gui/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "f40fc5cfb6c69dea427030be35136627be59b9414452830e55c32dd54e668760";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = "This package contains a GUI tool for setting and publishing joint state values for a given URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
