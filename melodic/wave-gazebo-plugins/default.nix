
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-wave-gazebo-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/wave_gazebo_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6da8404f254022a612f018205fb3cb3e6985b5829a785edd02d7585ee0156498";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros eigen ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains Gazebo plugins for the simulation of 
    water surface waves and hydrostatic and hydrodynamics forces.'';
    license = with lib.licenses; [ "TBD" ];
  };
}
