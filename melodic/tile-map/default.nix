
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, pluginlib, mapviz, catkin, libqt-core, libqt-opengl, roscpp, jsoncpp, qt-qmake, swri-yaml-util, libqt-dev, libqt-opengl-dev, glew, tf, swri-transform-util }:
buildRosPackage {
  pname = "ros-melodic-tile-map";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/tile_map/1.1.1-1.tar.gz;
    sha256 = "87bfd86a1c2d9486b670a33e6e4dae5086281aa23a3e67e4886039706387c5d0";
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
