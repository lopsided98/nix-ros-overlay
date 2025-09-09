
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rosgraph-monitor-msgs";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/kilted/rosgraph_monitor_msgs/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "b78b2cd9bea6f55b7dbd1f48d660a0222ae0dd597c884404949673541b6ec9ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for reporting observations about the ROS 2 communication graph";
    license = with lib.licenses; [ asl20 ];
  };
}
