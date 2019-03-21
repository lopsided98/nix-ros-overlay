
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, catkin, libqt-core, libqt-opengl, roscpp, jsoncpp, qt-qmake, swri-yaml-util, libqt-dev, libqt-opengl-dev, glew, tf, swri-transform-util }:
buildRosPackage {
  pname = "ros-kinetic-tile-map";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/tile_map/1.1.0-0.tar.gz;
    sha256 = "d989d8305bec3c3779af859a65be2f8dc9fedb90d1d960767bfa35950f66fd5f";
  };

  propagatedBuildInputs = [ swri-math-util pluginlib mapviz libqt-core libqt-opengl roscpp jsoncpp swri-yaml-util glew tf swri-transform-util ];
  nativeBuildInputs = [ swri-math-util pluginlib mapviz glew catkin roscpp qt-qmake swri-yaml-util libqt-dev libqt-opengl-dev jsoncpp tf swri-transform-util ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GooleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    #license = lib.licenses.BSD;
  };
}
