
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, distance-map-msgs, qt5, rviz }:
buildRosPackage {
  pname = "ros-kinetic-distance-map-rviz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/artivis/distance_map-release/archive/release/kinetic/distance_map_rviz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "300f694c2596460284c19a916576ed8a9e3fd95fb009d8c196d9e0e0b7d85eaf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ distance-map-msgs qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugin for the visualization of ditance maps.'';
    license = with lib.licenses; [ asl20 ];
  };
}
