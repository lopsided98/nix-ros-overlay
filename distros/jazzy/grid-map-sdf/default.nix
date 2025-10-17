
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, pcl }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-sdf";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_sdf/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "63a4c76d0839ae73da67d84858293de262bc36e335c53015c9ade50d5edd4fd1";
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
