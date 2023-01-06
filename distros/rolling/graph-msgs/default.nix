
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-graph-msgs";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/rolling/graph_msgs/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "e7c4aa1ee31fbb2acaad5a1cbef09ab401054e78635865d95359e985964ddb56";
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
