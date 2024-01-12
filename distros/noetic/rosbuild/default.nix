
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-rosbuild";
  version = "1.15.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbuild/1.15.8-1.tar.gz";
    name = "1.15.8-1.tar.gz";
    sha256 = "0c84f212ce86cdfe61726e3bfd304ca257c1ae4d113bd0524c8f9d7dd6529c43";
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
