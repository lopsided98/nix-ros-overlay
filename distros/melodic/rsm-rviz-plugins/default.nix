
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, interactive-markers, pluginlib, roscpp, rsm-msgs, rviz, std-msgs, std-srvs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rviz-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_rviz_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "f5efbb578bac6c1465862cb6b29d8255f8307814a27bc0aa5fbc5202c5434124";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules interactive-markers pluginlib roscpp rsm-msgs rviz std-msgs std-srvs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot
		Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
