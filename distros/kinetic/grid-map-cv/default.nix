
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, filters, grid-map-core }:
buildRosPackage {
  pname = "ros-kinetic-grid-map-cv";
  version = "1.6.2-r1";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/kinetic/grid_map_cv/1.6.2-1.tar.gz";
    name = "1.6.2-1.tar.gz";
    sha256 = "eb4a6a602d19f4268d1450edc8d2306b23e2456b60e9d3df1f2f12c1bd0a95fc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge filters grid-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
