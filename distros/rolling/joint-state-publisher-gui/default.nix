
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, python-qt-binding, rclpy }:
buildRosPackage {
  pname = "ros-rolling-joint-state-publisher-gui";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/rolling/joint_state_publisher_gui/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "255b331da0aec234a32fb38242469bb22dc62d04e57d255dfa8c2703ec61c8a6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ joint-state-publisher python-qt-binding rclpy ];

  meta = {
    description = ''This package contains a GUI tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
