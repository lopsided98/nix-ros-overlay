
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-kilted-tile-map";
  version = "2.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/tile_map/2.4.8-1.tar.gz";
    name = "2.4.8-1.tar.gz";
    sha256 = "3326b147094addd939848b73dbb276be52ae56c4a95b1aa5c1db22a474fd8293";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ glew jsoncpp mapviz pluginlib qt5.qtbase rclcpp swri-math-util swri-transform-util tf2 tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GoogleMap tiles.  A mapviz visualization plug-in is also
     implemented";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
