
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ainstein-radar-msgs, catkin, gazebo-plugins, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-gazebo-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_gazebo_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ef942f97be03d4812caa6e0d85b25bf61ce1d88bae8191550374e5bc29262596";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros roscpp ainstein-radar-msgs gazebo-plugins ];
  propagatedBuildInputs = [ gazebo-ros roscpp ainstein-radar-msgs gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Radar sensor plugins for the Gazebo simulator.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
