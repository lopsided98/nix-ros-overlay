
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, ainstein-radar-filters, ainstein-radar-gazebo-plugins, catkin, ainstein-radar-drivers, ainstein-radar-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d0db5e074b345af9dc9d4d5c3156019b5735b2f27d3b4ce632ff7f8ac5941073";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-drivers ainstein-radar-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
