
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ainstein-radar-msgs, roscpp, gazebo-ros, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-gazebo-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_gazebo_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "96594cfda92b5032a9b37f1ae3ec8c017c61f4d67fa05e57bf115c2e508ed606";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros gazebo-plugins ainstein-radar-msgs roscpp ];
  propagatedBuildInputs = [ gazebo-ros gazebo-plugins ainstein-radar-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar sensor plugins for the Gazebo simulator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
