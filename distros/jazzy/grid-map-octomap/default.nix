
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-octomap";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_octomap/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "3773c5451b88f30b8af3b6269822501a185a867e708c80657a64a0cdef699a93";
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
