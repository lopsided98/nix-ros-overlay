
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glew, jsoncpp, mapviz, pluginlib, qt5, roscpp, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-noetic-tile-map";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/tile_map/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "33a0cbbfea6d846191bd6904d11430a0a6cb988772b3a001390e686a88e7cf58";
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
