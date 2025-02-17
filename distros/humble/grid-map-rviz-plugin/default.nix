
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-msgs, grid-map-ros, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-grid-map-rviz-plugin";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_rviz_plugin/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ec576b968ee5cf1c67945912cc717fadff5cd3b2c8459b124a8af9c5689f9128";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-msgs grid-map-ros qt5.qtbase rclcpp rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz plugin for displaying grid map messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
