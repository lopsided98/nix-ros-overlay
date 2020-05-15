
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glew, jsoncpp, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, mapviz, pluginlib, qt-qmake, roscpp, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-tile-map";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/tile_map/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c56d9593855688898d183e51ea790ff2f87bdeddd49ac0e8ac193db9022eebf9";
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
