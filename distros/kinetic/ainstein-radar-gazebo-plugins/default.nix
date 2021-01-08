
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, gazebo-plugins, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-gazebo-plugins";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_gazebo_plugins/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "f2856f3b88625364c548b3f160a63126e1c55bcbf5886a79ff29f9b6ad13586a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs gazebo-plugins gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar sensor plugins for the Gazebo simulator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
