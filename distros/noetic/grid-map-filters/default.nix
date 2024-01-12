
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, grid-map-core, grid-map-msgs, grid-map-ros, gtest, opencv, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-noetic-grid-map-filters";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/noetic/grid_map_filters/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "b4c5e3a49f7cfe5dbf2a919a316925ea3639e0d6a6eda175663182e0b3538210";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros opencv opencv.cxxdev tbb_2021_8 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
