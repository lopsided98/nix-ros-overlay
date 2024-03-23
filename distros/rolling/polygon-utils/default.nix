
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-rolling-polygon-utils";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/rolling/polygon_utils/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "21a1b229e087cbcc0b60af797466e4f990f2bb6a15b0e58e1ecfe544b74c6613";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities for working with polygons, including triangulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
