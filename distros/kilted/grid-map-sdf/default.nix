
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, pcl }:
buildRosPackage {
  pname = "ros-kilted-grid-map-sdf";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_sdf/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "abbb2de5c8a34dd661df45b9ab1894d6856c783941400f96418faae86cbe5a14";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generates signed distance fields from grid maps.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
