
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-robosense-gazebo-plugins";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/tomlogan501/robosense_simulator_release/archive/release/melodic/robosense_gazebo_plugins/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2f3b09cdb5ec908834e24c2275e594c57373ee10482f8dbf2ba3f13177da0900";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin to provide simulated data from Robosense laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
