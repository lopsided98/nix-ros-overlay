
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-tile-map";
  version = "2.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/rolling/tile_map/2.4.7-1.tar.gz";
    name = "2.4.7-1.tar.gz";
    sha256 = "c65c9e6d3f34d60741fc12d6d08b5917e681cae5a353c85815eb102c4f34e364";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ glew jsoncpp mapviz pluginlib qt5.qtbase rclcpp swri-math-util swri-transform-util tf2 yaml-cpp ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = "Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GoogleMap tiles.  A mapviz visualization plug-in is also
     implemented";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
