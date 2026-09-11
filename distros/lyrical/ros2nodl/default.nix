
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, builtin-interfaces, nodl-conformance, nodl-observe, nodl-schema, python3Packages, rcl-interfaces, rclpy, ros2cli, rosgraph-msgs, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/ros2nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "7d0ed2eb4be4b8aed230ea34ba51aa44734348a2eccd816743233e413928ae3b";
  };

  buildType = "ament_python";
  checkInputs = [ builtin-interfaces python3Packages.pytest rcl-interfaces std-msgs ];
  propagatedBuildInputs = [ ament-index-python nodl-conformance nodl-observe nodl-schema rclpy ros2cli rosgraph-msgs rosidl-runtime-py ];

  meta = {
    description = "ros2cli command entrypoint for NoDL.";
    license = with lib.licenses; [ asl20 ];
  };
}
