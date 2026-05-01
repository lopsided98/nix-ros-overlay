
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-octomap-msgs";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/lyrical/octomap_msgs/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "658151c3805d7ef2b44684343f9e70fd9a1504bd399304d2921afde67de88b4c";
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
