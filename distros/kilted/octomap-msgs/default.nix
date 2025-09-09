
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-octomap-msgs";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/kilted/octomap_msgs/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "d41b391c49cfbe891c17494e893bc7d7377924683a24c97d89209b6903c61fcf";
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
