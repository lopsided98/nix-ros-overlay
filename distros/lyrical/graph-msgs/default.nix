
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-graph-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/lyrical/graph_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "1e7314ea68852f972450d6ed7e06416a06d7db8e4b14ca555d936f06ec69c5e5";
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
