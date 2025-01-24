
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, grid-map-msgs, grid-map-ros, pcl, rclcpp, rcutils, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-pcl";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_pcl/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "1174e6032c6d969260a452409bfeca85c8ea26eaa7546ba9c7bd74adb9d13d12";
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
