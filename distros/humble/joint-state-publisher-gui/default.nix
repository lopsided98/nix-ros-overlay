
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-humble-joint-state-publisher-gui";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/humble/joint_state_publisher_gui/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "63ced7d5e798e6ff8b3b61093cedbe80bd929c6ba2134a116681585cd92d03d4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
