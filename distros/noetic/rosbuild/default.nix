
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-rosbuild";
  version = "1.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/noetic/rosbuild/1.15.1-1.tar.gz";
    name = "1.15.1-1.tar.gz";
    sha256 = "58ba69f0a603aa09c2ad828fbaf88473b591e87894cf3940d995b17dcd291873";
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
