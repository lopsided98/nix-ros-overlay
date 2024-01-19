
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-core, grid-map-msgs, grid-map-ros, gtest, pcl, pcl-ros, roscpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-grid-map-pcl";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_pcl/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "450b6691fec88882a64528d24fa91d9108e628448bccc5ec570cb092a1fd47d7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros pcl pcl-ros roscpp yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
