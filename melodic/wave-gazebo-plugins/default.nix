
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, eigen }:
buildRosPackage {
  pname = "ros-melodic-wave-gazebo-plugins";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/vrx-release/archive/release/melodic/wave_gazebo_plugins/1.1.1-1.tar.gz;
    sha256 = "c2c98de3053e983780f6d4e05eb7bf5439556bfffa62ccf34e9e2d82fcde0d19";
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
