
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-graph-msgs";
  version = "0.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/kilted/graph_msgs/0.2.0-6.tar.gz";
    name = "0.2.0-6.tar.gz";
    sha256 = "3070a18fca5073f08542b2c0ebd192a4b395fdd48d3b42a21df587553f3e2497";
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
