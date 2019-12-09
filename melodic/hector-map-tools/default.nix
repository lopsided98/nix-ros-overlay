
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen, nav-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-hector-map-tools";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_map_tools/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "980e8e3e48bdb9d27e68261ba79d1a55d3b361dcbb55835fa0407854bf5492a1";
  };

  buildType = "catkin";
  buildInputs = [ eigen nav-msgs ];
  propagatedBuildInputs = [ eigen nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_tools contains some functions related to accessing information from OccupancyGridMap maps.
    Currently consists of a single header.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
