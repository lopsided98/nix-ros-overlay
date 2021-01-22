
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, nav-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-map-tools";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_map_tools/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "a0b0cf4118a38dda18d1d6e263a0065e18c01ca412523191326ed4c7cbff8576";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_tools contains some functions related to accessing information from OccupancyGridMap maps.
    Currently consists of a single header.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
