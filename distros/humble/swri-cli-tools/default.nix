
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, marti-introspection-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-humble-swri-cli-tools";
  version = "3.7.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_cli_tools/3.7.3-2.tar.gz";
    name = "3.7.3-2.tar.gz";
    sha256 = "4ca57c79207a4bd2244755ce1e05925f249191f3b806f291c34ab4044890957b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint ];
  propagatedBuildInputs = [ marti-introspection-msgs python3Packages.natsort rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "Command line tools for introspecting ROS systems";
    license = with lib.licenses; [ bsd3 ];
  };
}
