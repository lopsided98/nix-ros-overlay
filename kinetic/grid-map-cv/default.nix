
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, cv-bridge, catkin }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-cv";
  version = "1.6.1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_cv/1.6.1-0.tar.gz";
    name = "1.6.1-0.tar.gz";
    sha256 = "6f53d10a6a6dfe5e0f110ac6e0e2785447afb6431c9a7a87cfc57e9337b2cd90";
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
