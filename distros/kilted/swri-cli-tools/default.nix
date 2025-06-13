
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-kilted-swri-cli-tools";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_cli_tools/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "bcd298b229c3193edf3e9e54ffb6227086f6a1908303d817663853d392bba9f2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "Command line tools for introspecting ROS systems";
    license = with lib.licenses; [ bsd3 ];
  };
}
