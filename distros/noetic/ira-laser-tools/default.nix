
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, pcl, pcl-ros, roscpp, sensor-msgs, std-msgs, tf, vtkWithQt5 }:
buildRosPackage {
  pname = "ros-noetic-ira-laser-tools";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/noetic/ira_laser_tools/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "485f800f619b79eb889c0b47521593098930f02f23f11ccb85fb71b9bd104a32";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry pcl pcl-ros roscpp sensor-msgs std-msgs tf vtkWithQt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
