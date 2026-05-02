
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-graph-msgs";
  version = "0.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/rolling/graph_msgs/0.2.0-6.tar.gz";
    name = "0.2.0-6.tar.gz";
    sha256 = "4ff04525b1f388d593d3bee0a7432a5ae9dad24748dfe64de4cf7d998f017a02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for publishing graphs of different data types";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
