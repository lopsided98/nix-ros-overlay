
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, filters, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pluginlib, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-kilted-grid-map-filters";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/kilted/grid_map_filters/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "5396d1000c40ec87e361002455ca0ecbae10354fe42ae15b8e4324e6ec4f0a3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros pluginlib tbb_2021_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Processing grid maps as a sequence of ROS filters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
