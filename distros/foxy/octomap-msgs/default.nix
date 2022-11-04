
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-octomap-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/octomap_msgs-release/archive/release/foxy/octomap_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fc4be1b8bf3c54baa958c5038b52178d5a0d652c3f96272e5cb70981cfc5796e";
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
