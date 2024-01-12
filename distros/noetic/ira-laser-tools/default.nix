
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, pcl, pcl-ros, roscpp, sensor-msgs, std-msgs, tf, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-noetic-ira-laser-tools";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/noetic/ira_laser_tools/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "34d9452ea7b8c7e04c9792f76d8dcd0aa77c5e51191dfec18732d8510d6aa96b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-geometry pcl pcl-ros roscpp sensor-msgs std-msgs tf vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
