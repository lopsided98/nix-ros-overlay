
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo-worlds";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_simulator-release/archive/release/noetic/leo_gazebo_worlds/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "21b32578fe4cde8d82c93691a6269cd2fba29b8b5b7ad27b77a0b7e2732e70fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Worlds for simulating Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
