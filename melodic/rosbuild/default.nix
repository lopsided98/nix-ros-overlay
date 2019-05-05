
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-rosbuild";
  version = "1.14.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/melodic/rosbuild/1.14.6-0.tar.gz;
    sha256 = "3c95011a3c521dc30e8b7f4399fdc46f0e3702978b9060f309529e6e8f396e43";
  };

  buildInputs = [ pkg-config ];
  propagatedBuildInputs = [ catkin message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbuild contains scripts for managing the CMake-based build system for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
