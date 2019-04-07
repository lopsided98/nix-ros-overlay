
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-marker-drawing, hector-map-tools, roscpp, hector-nav-msgs, nav-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-map-server";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_map_server/0.3.5-0.tar.gz;
    sha256 = "916463a0cb7f0b1ffa93bb6c43c72e7b821d33ac2296b54fc8a9c21dd464934d";
  };

  buildInputs = [ roscpp nav-msgs hector-map-tools tf hector-marker-drawing hector-nav-msgs ];
  propagatedBuildInputs = [ roscpp nav-msgs hector-map-tools tf hector-marker-drawing hector-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_map_server provides a service for retrieving the map, as well as for raycasting based obstacle queries (finds next obstacle in the map, given start and endpoint
    in any tf coordinate frame).'';
    #license = lib.licenses.BSD;
  };
}
