
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rosgraph-monitor-msgs";
  version = "0.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_monitor-release/archive/release/rolling/rosgraph_monitor_msgs/0.2.3-2.tar.gz";
    name = "0.2.3-2.tar.gz";
    sha256 = "438b7ed3f735686b2d1cd752808dda99b0c42cc085bb0c97a8275e54f53c886c";
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
