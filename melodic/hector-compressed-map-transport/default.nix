
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, catkin, image-transport, eigen, cv-bridge, hector-map-tools, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-compressed-map-transport";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_compressed_map_transport/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "3be26fd7806ed4e643de57b603bb8b7fb8e4bdd46a6484d77d3c5ff113d4b391";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs image-transport eigen cv-bridge hector-map-tools nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs image-transport eigen cv-bridge hector-map-tools nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
