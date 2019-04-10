
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, pcl, sensor-msgs, catkin, laser-geometry, vtkWithQt4, std-msgs, roscpp, pcl-ros }:
buildRosPackage {
  pname = "ros-lunar-ira-laser-tools";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/iralabdisco/ira_laser_tools-release/archive/release/lunar/ira_laser_tools/1.0.2-0.tar.gz;
    sha256 = "13913221bf345162c5dda4fec9512d76c8ad35e8f76c6cb1ec8eb11f7785a215";
  };

  buildInputs = [ vtkWithQt4 std-msgs pcl sensor-msgs laser-geometry pcl-ros roscpp tf ];
  propagatedBuildInputs = [ vtkWithQt4 std-msgs pcl sensor-msgs laser-geometry pcl-ros roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ira_laser_tools package. These nodes are meant to provide some utils for lasers, like listen to different laser scan sources and merge them in a single scan or generate virtual laser scans from a pointcloud.'';
    #license = lib.licenses.BSD;
  };
}
