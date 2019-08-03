
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, eigen }:
buildRosPackage {
  pname = "ros-kinetic-wave-gazebo-plugins";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/kinetic/wave_gazebo_plugins/1.1.2-1.tar.gz;
    sha256 = "a403de57f375831ef43b6b8f5840d58c788e1d59bbbb3c774183aadfb1b8675d";
  };

  buildInputs = [ gazebo-ros eigen ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains Gazebo plugins for the simulation of 
    water surface waves and hydrostatic and hydrodynamics forces.'';
    license = with lib.licenses; [ "TBD" ];
  };
}
