
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, grid-map-core, grid-map-msgs, grid-map-ros, gtest, opencv, tbb }:
buildRosPackage {
  pname = "ros-melodic-grid-map-filters";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_filters/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "7fac82b2939d4a4e047e106e4d8986300bf1d5aa708e8bfc2cc487ca4b740710";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros opencv tbb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
