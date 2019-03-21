
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, tf2-eigen, pcl-ros, roslaunch, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-map-merge-3d";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/hrnr/map-merge-release/archive/release/melodic/map_merge_3d/0.1.1-0.tar.gz;
    sha256 = "7413dc94e5c7e8b52bf48c1b7be92e7b7381fac6cd5db59b93e5b9fdf5a4d163";
  };

  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ roscpp tf2-ros tf2-eigen pcl-ros ];
  nativeBuildInputs = [ tf2-eigen pcl-ros catkin roscpp tf2-ros ];

  meta = {
    description = ''Merging multiple 3D maps, represented as pointclouds,
  without knowledge of initial positions of robots.'';
    #license = lib.licenses.BSD;
  };
}
