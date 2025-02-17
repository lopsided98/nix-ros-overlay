
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, octomap }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-octomap";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_octomap/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "5c1ad916518bb8f2573a6a66f56e6ceb2395a8d10129d595ddf1e6f03a15134a";
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
