
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-drivers, ainstein-radar-filters, ainstein-radar-gazebo-plugins, ainstein-radar-msgs, ainstein-radar-rviz-plugins, ainstein-radar-tools, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e58ad4a1f7a07b24d62a33d9d64e5d8c229ac86bdd8b1b769e0b847544ecab3d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-drivers ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-msgs ainstein-radar-rviz-plugins ainstein-radar-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
