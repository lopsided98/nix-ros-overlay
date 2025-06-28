
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-tile-map";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/tile_map/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "b277ba2ca0444a9d327c97bf597699b2d101c276cbccabe6b2eb7a0b698f13f9";
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
