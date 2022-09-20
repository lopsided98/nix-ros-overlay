
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, libyamlcpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-foxy-tile-map";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/foxy/tile_map/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4c442a1e13ffea454c4cd65053f800a59a8afc6c3239a351ebd2d68e23ac41f9";
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
