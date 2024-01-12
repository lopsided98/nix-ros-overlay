
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-msgs, grid-map-ros, gtest, roscpp }:
buildRosPackage {
  pname = "ros-noetic-grid-map-loader";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_loader/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "b077be707e5fb790acce59ef081b7eadd1a4342dccdd10fc54637906b97b39b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Loading and publishing grid maps from bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
