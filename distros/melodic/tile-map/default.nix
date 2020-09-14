
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glew, jsoncpp, mapviz, pluginlib, qt5, roscpp, swri-math-util, swri-transform-util, swri-yaml-util, tf }:
buildRosPackage {
  pname = "ros-melodic-tile-map";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/tile_map/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "b46ba8ffa16983f1b9e3398b0d720baf3092ec9b09bb865d63237d3f6c9e9674";
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
