
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-lunar-rosbuild";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosbuild/1.14.4-0.tar.gz;
    sha256 = "2ec3151c74b56543cd9548b102494d17321ed834323cb35c6c6e563fc77ecdfd";
  };

  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbuild contains scripts for managing the CMake-based build system for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
