
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, pcl, pcl-ros, roscpp, sensor-msgs, std-msgs, tf, vtkWithQt4 }:
buildRosPackage {
  pname = "ros-kinetic-ira-laser-tools";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/kinetic/ira_laser_tools/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "68a56b260c6b1063c03305d2cea284da424d86f7d30b970a77ae735f57813bde";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry pcl pcl-ros roscpp sensor-msgs std-msgs tf vtkWithQt4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
