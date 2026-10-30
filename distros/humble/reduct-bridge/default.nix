
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_rustc, ament-cmake, builtin-interfaces, cargo, cmake, example-interfaces, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, ros-environment, rosgraph-msgs, rosidl-runtime-c, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-reduct-bridge";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reduct_bridge-release/archive/release/humble/reduct_bridge/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "be417a4d2e19d96003186f53f7ff232d22aec35c9020f9c18a108d0798416cc2";
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
