
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, pcl, pcl-ros, roscpp, sensor-msgs, std-msgs, tf, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-noetic-ira-laser-tools";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/noetic/ira_laser_tools/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "547a2b868bc6d8bd607d9c882674e7ebabf411e3afa1cee18244b61d6c4ab822";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry pcl pcl-ros roscpp sensor-msgs std-msgs tf vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
