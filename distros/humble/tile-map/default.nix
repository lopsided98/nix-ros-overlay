
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, jsoncpp, mapviz, pluginlib, qt-gui-cpp, qt5or6, rclcpp, swri-math-util, swri-transform-util, tf2, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-tile-map";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/tile_map/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "ff74575ac901ad60b2f1fadfb43c1eb6a1fce429bfa99d5fea6ebb4a78b4e69d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ jsoncpp mapviz pluginlib qt-gui-cpp qt5or6.qtbase rclcpp swri-math-util swri-transform-util tf2 yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GoogleMap tiles.  A mapviz visualization plug-in is also
     implemented";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
