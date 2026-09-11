
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, builtin-interfaces, nodl-conformance, nodl-observe, nodl-schema, python3Packages, rcl-interfaces, rclpy, ros2cli, rosgraph-msgs, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2nodl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/ros2nodl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "06aeac22cd74bc739c4e14565a819cb3515d1dc134a1ed7c273d873a0548dc80";
  };

  buildType = "ament_python";
  checkInputs = [ builtin-interfaces python3Packages.pytest rcl-interfaces std-msgs ];
  propagatedBuildInputs = [ ament-index-python nodl-conformance nodl-observe nodl-schema rclpy ros2cli rosgraph-msgs rosidl-runtime-py ];

  meta = {
    description = "ros2cli command entrypoint for NoDL.";
    license = with lib.licenses; [ asl20 ];
  };
}
