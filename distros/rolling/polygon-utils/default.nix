
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-rolling-polygon-utils";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/rolling/polygon_utils/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4f1a64249d943c18684fb0c7e5c605537ee16d347165083a9a5bc9258402cdfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities for working with polygons, including triangulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
