
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, jsk-recognition-msgs, nodelet, pcl-ros, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-filters";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_filters/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "53a831c1b7e0b011a093bbafb87d18e42a4fddeb0bc5986edb3596dcd508de97";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs jsk-recognition-msgs nodelet pcl-ros roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
