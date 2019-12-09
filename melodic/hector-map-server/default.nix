
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-nav-msgs, catkin, tf, roscpp, hector-map-tools, nav-msgs, hector-marker-drawing }:
buildRosPackage {
  pname = "ros-melodic-hector-map-server";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_map_server/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "b86414ff423348c86a9084d947ae80233e141f01394254ed5a424cfd84c9227e";
  };

  buildType = "catkin";
  buildInputs = [ hector-nav-msgs tf roscpp hector-map-tools nav-msgs hector-marker-drawing ];
  propagatedBuildInputs = [ hector-nav-msgs tf roscpp hector-map-tools nav-msgs hector-marker-drawing ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_server provides a service for retrieving the map, as well as for raycasting based obstacle queries (finds next obstacle in the map, given start and endpoint
    in any tf coordinate frame).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
