
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-rosgraph-monitor-msgs";
  version = "0.2.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/lyrical/rosgraph_monitor_msgs/0.2.3-3.tar.gz";
    name = "0.2.3-3.tar.gz";
    sha256 = "7df9c5e0385a7c6978ad9828f26c1cb9b04a124c62e05008b05138827a781b23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for reporting observations about the ROS 2 communication graph";
    license = with lib.licenses; [ asl20 ];
  };
}
