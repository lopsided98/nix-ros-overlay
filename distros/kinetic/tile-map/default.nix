
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glew, jsoncpp, mapviz, pluginlib, qt5, roscpp, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-kinetic-tile-map";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/tile_map/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "7cce0cc5fe58f8879a628483e2a119dc83e58b2e50a5d985058babea275748b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ glew jsoncpp mapviz pluginlib qt5.qtbase roscpp swri-math-util swri-transform-util swri-yaml-util tf ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''Tile map provides a slippy map style interface for visualizing 
     OpenStreetMap and GooleMap tiles.  A mapviz visualization plug-in is also
     implemented'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
