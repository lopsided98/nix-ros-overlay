
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-rosbuild";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbuild/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "2bc6349bdd26e0a103dbc2663612fe0aace2f9a3e4374957a411fc671f2209bb";
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
