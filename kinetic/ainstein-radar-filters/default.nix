
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, nodelet, pcl-ros, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-filters";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_filters/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "be1c16b0cb63d0556f30e07d59d7c9fb61422d17cd8d69557a3cb5184bee2c69";
  };

  buildType = "catkin";
  buildInputs = [ nodelet roscpp ainstein-radar-msgs pcl-ros ];
  propagatedBuildInputs = [ nodelet ainstein-radar-msgs roscpp pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
