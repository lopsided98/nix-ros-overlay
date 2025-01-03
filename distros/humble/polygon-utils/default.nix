
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, polygon-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-humble-polygon-utils";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/humble/polygon_utils/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1d5b2a5613986b493eb2d4b23b98f6baa2697a87793c2116dd1d25067062c13c";
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
