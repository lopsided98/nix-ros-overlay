
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cv-bridge, gps-common, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, move-base-msgs, nav-msgs, pluginlib, qt5, roscpp, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, swri-yaml-util, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mapviz-plugins";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/melodic/mapviz_plugins/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "2afe3c84ce13234d9940c410214ba6f6ca4e260d422141c9f476d94c3b64025a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib cv-bridge gps-common image-transport map-msgs mapviz marti-common-msgs marti-nav-msgs marti-sensor-msgs marti-visualization-msgs move-base-msgs nav-msgs pluginlib qt5.qtbase roscpp sensor-msgs std-msgs stereo-msgs swri-image-util swri-math-util swri-route-util swri-transform-util swri-yaml-util tf visualization-msgs ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''Common plugins for the Mapviz visualization tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
