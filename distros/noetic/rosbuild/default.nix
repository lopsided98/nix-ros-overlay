
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-rosbuild";
  version = "1.15.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbuild/1.15.6-1.tar.gz";
    name = "1.15.6-1.tar.gz";
    sha256 = "bc2edd04f4f3a101fbc72d3f91bc9793964f1076c93ce348c0ee5665717265eb";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbuild contains scripts for managing the CMake-based build system for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
