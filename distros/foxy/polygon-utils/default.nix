
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-foxy-polygon-utils";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/foxy/polygon_utils/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "51d30ca947b047cf0c1238b5f12e7f0bec268f727fe46b2697cec55b393989c8";
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
