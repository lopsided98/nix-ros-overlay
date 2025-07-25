
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rviz-resource-interfaces";
  version = "15.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_resource_interfaces/15.0.4-1.tar.gz";
    name = "15.0.4-1.tar.gz";
    sha256 = "078ef5c74d81c9474e52d66f7c4f912da939095b2d432b863ba779db59344fcd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS interfaces for working with resources like meshes.";
    license = with lib.licenses; [ asl20 ];
  };
}
