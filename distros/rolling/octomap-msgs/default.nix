
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-octomap-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/rolling/octomap_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "93154a8682d2cb0fbc82a086b450a78d125a1c6f0dfc5395bb1f2e314dce6b8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This package provides messages and serializations / conversion for the <a href="http://octomap.github.com">OctoMap library</a>.
   This ROS2 version is based on version 0.3.3 of the ROS1 package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
