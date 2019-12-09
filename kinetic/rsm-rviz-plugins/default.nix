
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, interactive-markers, pluginlib, std-srvs, std-msgs, tf, cmake-modules, catkin, rviz, visualization-msgs, roscpp, rsm-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rsm-rviz-plugins";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_rviz_plugins/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "46ec0d7f705301700d107a3a8229e4ce8f065c3e57ae8e13971429c41cd40755";
  };

  buildType = "catkin";
  buildInputs = [ interactive-markers pluginlib std-msgs std-srvs tf cmake-modules rviz visualization-msgs roscpp rsm-msgs ];
  propagatedBuildInputs = [ interactive-markers pluginlib std-srvs std-msgs tf cmake-modules rviz visualization-msgs roscpp rsm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot
		Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
