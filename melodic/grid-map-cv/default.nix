
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, cv-bridge, catkin }:
buildRosPackage {
  pname = "ros-melodic-grid-map-cv";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_cv/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "7b0ccbb9fe7b0ee3a762998a1f6bb4f7df965f707d214fe7b57914456d5c2d60";
  };

  buildType = "catkin";
  buildInputs = [ grid-map-core filters cv-bridge ];
  propagatedBuildInputs = [ grid-map-core filters cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
