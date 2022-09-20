
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grid-map-msgs, grid-map-ros, gtest, roscpp }:
buildRosPackage {
  pname = "ros-melodic-grid-map-loader";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_loader/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "3b32397c6eda6714eb4f31b6f64bcb55f63e934015a0e519e90e3dc2bdcf41f5";
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
