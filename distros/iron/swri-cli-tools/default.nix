
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-iron-swri-cli-tools";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_cli_tools/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "bb675d6414ae08b890dbc007b484b2a32d595432b7d3343b2e4c43beff2a3477";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ];

  meta = {
    description = ''Command line tools for introspecting ROS systems'';
    license = with lib.licenses; [ bsd3 ];
  };
}
