
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, jsk-recognition-msgs, catkin, ainstein-radar-msgs, tf2-eigen, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-filters";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_filters/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "779da5a6c95af8b75eba3d941d2649f70af4742fe371759153d2a2de888228f2";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros jsk-recognition-msgs ainstein-radar-msgs tf2-eigen nodelet roscpp ];
  propagatedBuildInputs = [ pcl-ros jsk-recognition-msgs ainstein-radar-msgs tf2-eigen nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filtering and data conversion utilities for radar data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
