
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cv-bridge, gps-common, image-transport, map-msgs, mapviz, marti-common-msgs, marti-nav-msgs, marti-sensor-msgs, marti-visualization-msgs, move-base-msgs, nav-msgs, pluginlib, qt5, roscpp, sensor-msgs, std-msgs, stereo-msgs, swri-image-util, swri-math-util, swri-route-util, swri-transform-util, swri-yaml-util, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-mapviz-plugins";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/noetic/mapviz_plugins/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "9725c95f637969dbcba301a892b89133500331980fd639e08efba8478d423bed";
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
