
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, filters, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, onetbb, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-filters";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_filters/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "4c1a93d69e0167d8ebc798d191fb17d2ecf271906298e2109671136a5ddc6805";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ filters grid-map-core grid-map-msgs grid-map-ros onetbb pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Processing grid maps as a sequence of ROS filters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
