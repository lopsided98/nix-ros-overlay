
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cv-bridge, gps-common, image-transport, libqt-core, libqt-dev, libqt-opengl, libqt-opengl-dev, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, move-base-msgs, nav-msgs, pluginlib, qt-qmake, roscpp, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, swri-yaml-util, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mapviz-plugins";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/kinetic/mapviz_plugins/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "7659e1618f9346a04641cfb0b6de4397e988d1a32c525f7e9bf464ee8f92edf0";
  };

  buildType = "catkin";
  buildInputs = [ libqt-dev libqt-opengl-dev ];
  propagatedBuildInputs = [ actionlib cv-bridge gps-common image-transport libqt-core libqt-opengl map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs move-base-msgs nav-msgs pluginlib roscpp sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util swri-yaml-util tf visualization-msgs ];
  nativeBuildInputs = [ catkin qt-qmake ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
