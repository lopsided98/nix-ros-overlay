
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_rustc, ament-cmake, builtin-interfaces, cargo, cmake, example-interfaces, rcl, rcl-action, rcl-interfaces, rcl-yaml-param-parser, rcutils, rmw, rmw-implementation, ros-environment, rosgraph-msgs, rosidl-runtime-c, test-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-reduct-bridge";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/reduct_bridge-release/archive/release/lyrical/reduct_bridge/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "c5f18ea2ae424ce3976cdffbf0db9547a60546f78f76d55bf919c9676ce95269";
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
