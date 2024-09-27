
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, marker-msgs, mrpt-libobs, mrpt-libros-bridge, mrpt-msgs, ros-environment, roscpp, tf2 }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs-bridge";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_msgs_bridge/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "af75ae1cdd5dbdaa8e9ed5c04be37aeb2c47f46e9bceaa0a967f291226d55d20";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ geometry-msgs marker-msgs mrpt-libobs mrpt-libros-bridge mrpt-msgs roscpp tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
