
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-rosbuild";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/rosbuild/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "34effeb0596f1cc1fb841b7e399fc8fda0f38c8ed3ea1c021172b68a38d5eeec";
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
