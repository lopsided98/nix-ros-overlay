
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-graph-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/graph_msgs-release/archive/release/jazzy/graph_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "d5ceb882eab189ed01dae8efdb6df173a8b5c8c0f1dd6c4840e3d7c47a6ed92e";
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
