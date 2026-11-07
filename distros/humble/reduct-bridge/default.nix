
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_rustc, ament-cmake, builtin-interfaces, cargo, cmake, example-interfaces, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, ros-environment, rosgraph-msgs, rosidl-runtime-c, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-reduct-bridge";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reduct_bridge-release/archive/release/humble/reduct_bridge/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "87efc8edd24a0f05a3b77d7a355b6c71c77225235301a0bc2b812d7a5f05c428";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_rustc ament-cmake cargo cmake ];
  propagatedBuildInputs = [ builtin-interfaces example-interfaces rcl rcl-action rcl-interfaces rcl-yaml-param-parser rcutils rmw rmw-implementation ros-environment rosgraph-msgs rosidl-runtime-c test-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Streams ROS 2 data into ReductStore.";
    license = with lib.licenses; [ asl20 ];
  };
}
