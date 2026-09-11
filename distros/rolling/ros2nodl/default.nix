
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, builtin-interfaces, nodl-conformance, nodl-observe, nodl-schema, python3Packages, rcl-interfaces, rclpy, ros2cli, rosgraph-msgs, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/ros2nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "747759b2f6af4e2d556db0b8df48564399e815582c4a90740a5375d95208719d";
  };

  buildType = "ament_python";
  checkInputs = [ builtin-interfaces python3Packages.pytest rcl-interfaces std-msgs ];
  propagatedBuildInputs = [ ament-index-python nodl-conformance nodl-observe nodl-schema rclpy ros2cli rosgraph-msgs rosidl-runtime-py ];

  meta = {
    description = "ros2cli command entrypoint for NoDL.";
    license = with lib.licenses; [ asl20 ];
  };
}
