
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glew, jsoncpp, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, mapviz, pluginlib, qt-qmake, roscpp, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-kinetic-tile-map";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/tile_map/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "041d6ece56c4323bb5fe5fd76b977b3cfe19541ff39c504927cd2cde06f55d36";
  };

  buildType = "catkin";
  buildInputs = [ libqt-dev libqt-opengl-dev ];
  propagatedBuildInputs = [ glew jsoncpp libqt-core libqt-opengl mapviz pluginlib roscpp swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GooleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
