
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-msgs, grid-map-ros }:
buildRosPackage {
  pname = "ros-humble-grid-map-loader";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_loader/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7d14682705acae2a62ef841f79ad5eaa4df1a195111aac8d57a95314230688ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Loading and publishing grid maps from bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
