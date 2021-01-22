
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-rosbuild";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosbuild/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "64bcd41bdcfa0461106eba033f2a6cbf1e90e70f1ff4a067b02150cd0d5e945c";
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
