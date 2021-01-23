
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-map-tools, hector-marker-drawing, hector-nav-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-hector-map-server";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_map_server/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4fdc28d9809c9640676c6f3480c79de129f02d1198374f09fc8cff9bf4c7609c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-tools hector-marker-drawing hector-nav-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_server provides a service for retrieving the map, as well as for raycasting based obstacle queries (finds next obstacle in the map, given start and endpoint
    in any tf coordinate frame).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
