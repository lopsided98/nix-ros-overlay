
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl-ros, roscpp, roslaunch, rosunit, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-map-merge-3d";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/hrnr/map-merge-release/archive/release/melodic/map_merge_3d/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "7413dc94e5c7e8b52bf48c1b7be92e7b7381fac6cd5db59b93e5b9fdf5a4d163";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ pcl-ros roscpp tf2-eigen tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Merging multiple 3D maps, represented as pointclouds,
  without knowledge of initial positions of robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
