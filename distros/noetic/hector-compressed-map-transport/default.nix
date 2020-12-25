
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, geometry-msgs, hector-map-tools, image-transport, nav-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-compressed-map-transport";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_compressed_map_transport/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "491432c1cb748c0bf8d5c43e32ff45c9b45e1ea9048d55623342b103e69e6158";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge eigen geometry-msgs hector-map-tools image-transport nav-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
