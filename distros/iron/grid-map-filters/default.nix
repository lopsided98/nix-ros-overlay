
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, filters, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pluginlib, tbb_2021_8 }:
buildRosPackage {
  pname = "ros-iron-grid-map-filters";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_filters/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8aad2b3e524c7087a887489bb63a61a6173e2aff0d03d0de7b9607a15d234019";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros pluginlib tbb_2021_8 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
