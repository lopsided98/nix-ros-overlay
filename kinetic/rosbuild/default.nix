
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-rosbuild";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosbuild/1.14.4-0.tar.gz;
    sha256 = "f6884a05446ea5ea487640a3a0c6accefb24b6ae6284fa57c1179612bd099f21";
  };

  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbuild contains scripts for managing the CMake-based build system for ROS.'';
    #license = lib.licenses.BSD;
  };
}
