
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-octomap-msgs";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_msgs-release/archive/release/rolling/octomap_msgs/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "807165b58a60f2057c25aaaa677cc8a380c6ceb7077b4d7d32aa908138acf6a1";
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
