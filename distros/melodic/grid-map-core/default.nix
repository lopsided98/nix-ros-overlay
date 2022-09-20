
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gtest }:
buildRosPackage {
  pname = "ros-melodic-grid-map-core";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_core/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "ea5d9d47bb6f5935ce95e8f2d241c1e482c5aa4d5f75c1e9819f8a5554b70a3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Universal grid map library to manage two-dimensional grid maps with multiple data layers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
