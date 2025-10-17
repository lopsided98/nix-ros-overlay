
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-msgs, grid-map-ros, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-jazzy-grid-map-rviz-plugin";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/jazzy/grid_map_rviz_plugin/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "cf1a4bbdd629c334bd4f2f91580ed11e21cbc8a7dbcb6fb1b1711be15306f3b1";
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
