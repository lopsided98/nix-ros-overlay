
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, geometry-msgs, hector-map-tools, image-transport, nav-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-compressed-map-transport";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_compressed_map_transport/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "3741cf10b494678719665e84216a3a3242df28c385f53576420786b830b651f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge eigen geometry-msgs hector-map-tools image-transport nav-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
