
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, filters, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pluginlib, tbb_2021_11 }:
buildRosPackage {
  pname = "ros-humble-grid-map-filters";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_filters/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "29bfd825d74d1778b719bd8516c30220f9fe2282847abfc94f3aebb8e8e8d98d";
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
