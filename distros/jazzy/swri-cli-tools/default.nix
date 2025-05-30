
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-jazzy-swri-cli-tools";
  version = "3.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_cli_tools/3.7.6-1.tar.gz";
    name = "3.7.6-1.tar.gz";
    sha256 = "56ee9370f14fb5c515d608a7cfa2825e640be3c088a8c825ff007357de890e67";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "Command line tools for introspecting ROS systems";
    license = with lib.licenses; [ bsd3 ];
  };
}
