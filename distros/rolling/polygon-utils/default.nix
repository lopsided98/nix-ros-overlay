
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, polygon-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-polygon-utils";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/rolling/polygon_utils/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2de1d0f6f672f76e88d2632b1001b40060d8d69f1bc52abe7979e2a3179aa074";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs python3Packages.shapely ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities for working with polygons, including triangulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
