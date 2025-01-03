
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-graph-msgs";
  version = "0.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/jazzy/graph_msgs/0.2.0-6.tar.gz";
    name = "0.2.0-6.tar.gz";
    sha256 = "1d45b78db80eb6af2161b2b1e9901ff2b31f649d182a673c1b71e09426b1a5ba";
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
