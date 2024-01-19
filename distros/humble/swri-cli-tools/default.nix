
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli }:
buildRosPackage {
  pname = "ros-humble-swri-cli-tools";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_cli_tools/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "27a50002e2cf61143d9ab7514d2a68fc3b27874b2f6effe128e7d94705e9aaab";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ];

  meta = {
    description = ''Command line tools for introspecting ROS systems'';
    license = with lib.licenses; [ bsd3 ];
  };
}
