
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, universal-robots }:
buildRosPackage {
  pname = "ros-kinetic-universal-robot";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/universal_robot/1.2.5-0.tar.gz;
    sha256 = "1e36ffdabb1bf7c44d5448cecaa7e311f255d0fa4f251827f5a8f0262646b1cd";
  };

  propagatedBuildInputs = [ universal-robots ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers, description, and utilities for Universal Robot Arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
