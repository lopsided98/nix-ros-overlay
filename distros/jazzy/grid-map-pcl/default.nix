
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pcl, rclcpp, rcutils, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-pcl";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_pcl/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f8ed731cb5df8c5b6ad1b8520198f9008baa4e2ff20332c0dca753909dca9040";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros pcl rclcpp rcutils yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between grid maps and Point Cloud Library (PCL) types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
