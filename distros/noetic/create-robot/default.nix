
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-bringup, create-description, create-driver, create-msgs }:
buildRosPackage {
  pname = "ros-noetic-create-robot";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/create_robot/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "57604c0cb6170b99d03dbbf9e2e7d3f9938db94aab1a8bbc70e62976883a74f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ create-bringup create-description create-driver create-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for iRobot's Create 1 and 2, based on the libcreate C++ library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
