
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, hector-map-tools, catkin, nav-msgs, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hector-compressed-map-transport";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_compressed_map_transport/0.3.5-0.tar.gz;
    sha256 = "8b0b05a9c93ad57c56e1131b46e24ef8e6a9b6d8e2ec7dfc667a1a029688ce10";
  };

  propagatedBuildInputs = [ nav-msgs eigen image-transport sensor-msgs cv-bridge hector-map-tools geometry-msgs ];
  nativeBuildInputs = [ nav-msgs catkin eigen image-transport sensor-msgs cv-bridge hector-map-tools geometry-msgs ];

  meta = {
    description = ''hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport.'';
    #license = lib.licenses.BSD;
  };
}
