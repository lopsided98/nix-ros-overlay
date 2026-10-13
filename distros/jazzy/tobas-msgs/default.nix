
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, tobas-eigen-msgs, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-msgs";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_msgs/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "3655d51c87a201bece078fafbb4828af6069c74bb732e63b6f28e2145dedffdc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime tobas-eigen-msgs tobas-kdl-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core ROS 2 messages and services for Tobas vehicles, sensors, commands, state, and health.";
    license = with lib.licenses; [ asl20 ];
  };
}
