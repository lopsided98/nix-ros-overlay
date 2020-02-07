
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-drivers, ainstein-radar-filters, ainstein-radar-gazebo-plugins, ainstein-radar-msgs, ainstein-radar-rviz-plugins, ainstein-radar-tools, catkin }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "f85a42304fa9e9bde722ac15182b9a2f92789a658873a1a1afaa1306fd2881ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-drivers ainstein-radar-filters ainstein-radar-gazebo-plugins ainstein-radar-msgs ainstein-radar-rviz-plugins ainstein-radar-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS support for Ainstein radar sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
