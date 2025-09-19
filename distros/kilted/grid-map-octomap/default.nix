
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-kilted-grid-map-octomap";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_octomap/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "6999119c4953a060e6cfe92a9ca046779781b34961bdc24cb64831c84656cbaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core octomap ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between grid maps and OctoMap types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
