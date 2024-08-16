
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-tile-map";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/iron/tile_map/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "a5c00c4805d366f1aea0f0cbd735d6e13eeaf2f975a1084c8387d9879fc8ccf7";
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
