
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libqt-opengl, qt-qmake, pluginlib, swri-math-util, tf, mapviz, catkin, roscpp, jsoncpp, libqt-dev, libqt-opengl-dev, libqt-core, swri-transform-util, glew, swri-yaml-util }:
buildRosPackage {
  pname = "ros-kinetic-tile-map";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/tile_map/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "041d6ece56c4323bb5fe5fd76b977b3cfe19541ff39c504927cd2cde06f55d36";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib swri-math-util tf mapviz roscpp jsoncpp libqt-dev libqt-opengl-dev swri-transform-util glew swri-yaml-util ];
  propagatedBuildInputs = [ libqt-opengl pluginlib swri-math-util tf mapviz roscpp jsoncpp libqt-core swri-transform-util glew swri-yaml-util ];
  nativeBuildInputs = [ qt-qmake catkin ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GooleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
