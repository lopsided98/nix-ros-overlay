
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-rosbuild";
  version = "1.15.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbuild/1.15.9-1.tar.gz";
    name = "1.15.9-1.tar.gz";
    sha256 = "5b02dfbef96adf7b4c5c4a01a70cf14c1bd7c18a2273c864abceb6e67a4dfab4";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "rosbuild contains scripts for managing the CMake-based build system for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
