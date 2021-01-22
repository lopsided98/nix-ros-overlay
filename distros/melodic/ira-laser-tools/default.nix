
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, pcl, pcl-ros, roscpp, sensor-msgs, std-msgs, tf, vtkWithQt4 }:
buildRosPackage {
  pname = "ros-melodic-ira-laser-tools";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/melodic/ira_laser_tools/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "6973e29fd04073a94af1a7d7d1eb03395ef024786672f7c97317f55cacdaad34";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry pcl pcl-ros roscpp sensor-msgs std-msgs tf vtkWithQt4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
