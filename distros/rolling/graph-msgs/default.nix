
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-graph-msgs";
  version = "0.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/rolling/graph_msgs/0.2.0-4.tar.gz";
    name = "0.2.0-4.tar.gz";
    sha256 = "fdf8164b7a0a0d05b4c9d170aa8acaa9562735c019a47aabc4e9790b9de022e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for publishing graphs of different data types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
