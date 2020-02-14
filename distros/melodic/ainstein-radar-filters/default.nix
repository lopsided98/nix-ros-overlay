
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, jsk-recognition-msgs, nodelet, pcl-ros, roscpp, tf2-eigen, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-ainstein-radar-filters";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/ainstein_radar_filters/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "e347805bf17c73a04c4d02e4323c0c7c8e9b9fa7ade5307095f7d83d423f7be2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs jsk-recognition-msgs nodelet pcl-ros roscpp tf2-eigen tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
