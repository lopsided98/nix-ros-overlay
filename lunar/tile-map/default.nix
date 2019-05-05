
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, catkin, libqt-core, libqt-opengl, roscpp, jsoncpp, qt-qmake, swri-yaml-util, libqt-dev, libqt-opengl-dev, glew, tf, swri-transform-util }:
buildRosPackage {
  pname = "ros-lunar-tile-map";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/lunar/tile_map/1.1.0-0.tar.gz;
    sha256 = "9183c5100ca4310720c852dcbf1336f60bb199699753a831f33105995b9dbc67";
  };

  buildInputs = [ swri-math-util pluginlib mapviz glew roscpp swri-yaml-util libqt-dev libqt-opengl-dev jsoncpp tf swri-transform-util ];
  propagatedBuildInputs = [ swri-math-util pluginlib mapviz libqt-core libqt-opengl roscpp jsoncpp swri-yaml-util glew tf swri-transform-util ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GooleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
