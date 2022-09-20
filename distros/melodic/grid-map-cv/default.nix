
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, filters, grid-map-core, gtest }:
buildRosPackage {
  pname = "ros-melodic-grid-map-cv";
  version = "1.6.4-r2";

  src = fetchurl {
    url = "https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_cv/1.6.4-2.tar.gz";
    name = "1.6.4-2.tar.gz";
    sha256 = "68a238c0e5e2854c8c4b0ff6af540290d45f63cf6e8938f2767e8e8fb9ccd053";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ cv-bridge filters grid-map-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Conversions between grid maps and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
