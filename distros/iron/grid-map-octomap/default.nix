
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-iron-grid-map-octomap";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_octomap/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "7455ba82fd425cc45207f436a26974fec1ca4d80033f662a5bf9abdd069585f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversions between grid maps and OctoMap types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
