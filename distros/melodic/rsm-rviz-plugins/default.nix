
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, interactive-markers, pluginlib, qt5, roscpp, rsm-msgs, rviz, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rviz-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_rviz_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "d3f94448ec9038c8da1be7d2290237e1db02cb482d5765abfb32fc687b338e05";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules interactive-markers pluginlib roscpp rsm-msgs rviz std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot
		Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
