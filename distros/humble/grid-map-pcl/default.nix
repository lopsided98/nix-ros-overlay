
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pcl, rclcpp, rcutils, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-grid-map-pcl";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_pcl/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "93f82c20260da38e7be18b51c551a8b00ec169fb3d6bb12a4d22bf3e4e822a99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros pcl rclcpp rcutils yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Conversions between grid maps and Point Cloud Library (PCL) types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
