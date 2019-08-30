
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-wave-gazebo-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wave_gazebo_plugins/1.2.0-1.tar.gz;
    sha256 = "5cced0063ba799f3a80584248f83520afa8e2bde4d9e8fff3f38466e3093eacf";
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
