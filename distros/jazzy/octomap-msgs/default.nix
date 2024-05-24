
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-octomap-msgs";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/jazzy/octomap_msgs/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "009eb7d31798b05f1ead69930d87d960ebf71cd417a0660ac16126c3f8417c68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "This package provides messages and serializations / conversion for the <a href=\"http://octomap.github.com\">OctoMap library</a>.
   This ROS2 version is based on version 0.3.3 of the ROS1 package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
