
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-msgs, grid-map-ros }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-loader";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_loader/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "15776e5f10e3b4727b0813d14523e4e3827b7b3bb81d1e2d5b2c09c09dd1a75e";
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
