
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-humble-polygon-utils";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/humble/polygon_utils/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b54f35d9f5ffaf46684c6621270b5ae0f796b9298152bb8be3b4b7172a575cab";
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
