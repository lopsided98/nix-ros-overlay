
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, pcl, sensor-msgs, catkin, laser-geometry, vtkWithQt4, std-msgs, roscpp, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-ira-laser-tools";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/iralabdisco/ira_laser_tools-release/archive/release/kinetic/ira_laser_tools/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "d1394e4f4f8dc23d9fe38bcc54ba8e04762e58a5e527bf5643ebb1600f38b09b";
  };

  buildType = "catkin";
  buildInputs = [ tf pcl sensor-msgs roscpp vtkWithQt4 std-msgs laser-geometry pcl-ros ];
  propagatedBuildInputs = [ tf pcl sensor-msgs roscpp vtkWithQt4 std-msgs laser-geometry pcl-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
