
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libqt-opengl, qt-qmake, pluginlib, swri-math-util, tf, mapviz, catkin, roscpp, jsoncpp, libqt-dev, libqt-opengl-dev, libqt-core, swri-transform-util, glew, swri-yaml-util }:
buildRosPackage {
  pname = "ros-melodic-tile-map";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/tile_map/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4a7a37878886851d82c6c26db6664410d798da341bacf6df0818e1e81ad1ae1f";
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
