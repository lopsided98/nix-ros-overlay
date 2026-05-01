
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-lyrical-swri-cli-tools";
  version = "3.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_cli_tools/3.8.7-3.tar.gz";
    name = "3.8.7-3.tar.gz";
    sha256 = "f88c6e22b3da24466c7bd249a802849fc6a0d50acef805a6046100fe6763f7c6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "Command line tools for introspecting ROS systems";
    license = with lib.licenses; [ bsd3 ];
  };
}
