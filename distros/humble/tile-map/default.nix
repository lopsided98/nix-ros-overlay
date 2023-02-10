
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, libyamlcpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-humble-tile-map";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/humble/tile_map/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "cfb7c13de406d62d8115891044592854b9a78dcb67eecf4d4b92d46700d50bd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ glew jsoncpp libyamlcpp mapviz pluginlib qt5.qtbase rclcpp swri-math-util swri-transform-util tf2 ];
  nativeBuildInputs = [ ament-cmake qt5.qtbase ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GoogleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
