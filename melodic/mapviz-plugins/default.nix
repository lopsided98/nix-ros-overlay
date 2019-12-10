
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cv-bridge, gps-common, image-transport, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-visualization-msgs, move-base-msgs, nav-msgs, pluginlib, qt-qmake, roscpp, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, swri-yaml-util, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mapviz-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4d2f34cf3d9e0f1a55afd8c48d112a80bd6174c7663164cc3abe19fd513b299c";
  };

  buildType = "catkin";
  buildInputs = [ libqt-dev libqt-opengl-dev ];
  propagatedBuildInputs = [ actionlib cv-bridge gps-common image-transport libqt-core libqt-opengl map-msgs mapviz marti-common-msgs marti-nav-msgs marti-visualization-msgs move-base-msgs nav-msgs pluginlib roscpp sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util swri-yaml-util tf visualization-msgs ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
