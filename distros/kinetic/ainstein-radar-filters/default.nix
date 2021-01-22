
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ainstein-radar-msgs, catkin, jsk-recognition-msgs, nodelet, pcl-ros, roscpp, tf2-eigen, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-filters";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_filters/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "681d99f0bbe1decc0aa2bc0170c45b866fd194365c8a4e795e802ca18547523b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ainstein-radar-msgs jsk-recognition-msgs nodelet pcl-ros roscpp tf2-eigen tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
