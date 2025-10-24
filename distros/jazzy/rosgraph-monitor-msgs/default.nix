
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rosgraph-monitor-msgs";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/jazzy/rosgraph_monitor_msgs/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "3ed2757f126ad510237302bb8c091fe8582c8d32ee1c488446862f5ac1b9c421";
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
