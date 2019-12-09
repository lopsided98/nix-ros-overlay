
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt-qmake, pluginlib, map-msgs, tf, mapviz, marti-nav-msgs, image-transport, libqt-dev, swri-transform-util, nav-msgs, sensor-msgs, swri-yaml-util, gps-common, move-base-msgs, std-msgs, catkin, marti-common-msgs, cv-bridge, roscpp, libqt-opengl, swri-math-util, actionlib, stereo-msgs, marti-visualization-msgs, libqt-opengl-dev, visualization-msgs, libqt-core, swri-route-util, swri-image-util }:
buildRosPackage {
  pname = "ros-melodic-mapviz-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4d2f34cf3d9e0f1a55afd8c48d112a80bd6174c7663164cc3abe19fd513b299c";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib map-msgs tf mapviz marti-nav-msgs image-transport libqt-dev swri-transform-util nav-msgs sensor-msgs swri-yaml-util gps-common move-base-msgs std-msgs marti-common-msgs cv-bridge roscpp swri-math-util actionlib stereo-msgs marti-visualization-msgs libqt-opengl-dev visualization-msgs swri-route-util swri-image-util ];
  propagatedBuildInputs = [ pluginlib map-msgs tf mapviz marti-nav-msgs image-transport swri-transform-util nav-msgs sensor-msgs swri-yaml-util gps-common move-base-msgs std-msgs marti-common-msgs cv-bridge roscpp libqt-opengl swri-math-util actionlib stereo-msgs marti-visualization-msgs visualization-msgs libqt-core swri-route-util swri-image-util ];
  nativeBuildInputs = [ qt-qmake catkin ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
