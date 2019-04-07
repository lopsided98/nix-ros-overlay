
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, swri-route-util, swri-yaml-util, actionlib, tf, swri-transform-util, stereo-msgs, marti-visualization-msgs, image-transport, gps-common, libqt-dev, libqt-opengl, swri-math-util, mapviz, catkin, move-base-msgs, nav-msgs, qt-qmake, std-msgs, roscpp, visualization-msgs, pluginlib, sensor-msgs, libqt-core, marti-nav-msgs, marti-common-msgs, libqt-opengl-dev, swri-image-util, map-msgs }:
buildRosPackage {
  pname = "ros-melodic-mapviz-plugins";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz_plugins/1.1.0-0.tar.gz;
    sha256 = "be044acba9267e5b7039c30a67b9acdf824e5c326a28fb1faa6a770646c9cb7e";
  };

  buildInputs = [ swri-math-util mapviz cv-bridge swri-route-util move-base-msgs nav-msgs swri-yaml-util actionlib std-msgs tf roscpp visualization-msgs stereo-msgs swri-transform-util pluginlib marti-visualization-msgs image-transport sensor-msgs marti-nav-msgs gps-common marti-common-msgs libqt-dev libqt-opengl-dev swri-image-util map-msgs ];
  propagatedBuildInputs = [ swri-math-util mapviz cv-bridge swri-route-util move-base-msgs nav-msgs swri-yaml-util actionlib std-msgs tf roscpp visualization-msgs stereo-msgs swri-transform-util pluginlib marti-visualization-msgs image-transport sensor-msgs libqt-core marti-nav-msgs gps-common marti-common-msgs libqt-opengl swri-image-util map-msgs ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    #license = lib.licenses.BSD;
  };
}
