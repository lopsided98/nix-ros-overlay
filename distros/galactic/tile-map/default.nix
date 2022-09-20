
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, glew, jsoncpp, libyamlcpp, mapviz, pluginlib, qt5, rclcpp, swri-math-util, swri-transform-util, tf2 }:
buildRosPackage {
  pname = "ros-galactic-tile-map";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/galactic/tile_map/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "e5c953792639ada4f61da76904ecd2bd27cdacc2c3e0cace4053bc5c39d9cbc3";
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
