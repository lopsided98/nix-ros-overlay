
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, cmake-modules, rsm-msgs, catkin, roscpp, rviz, interactive-markers, visualization-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rsm-rviz-plugins";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_rviz_plugins/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "46ec0d7f705301700d107a3a8229e4ce8f065c3e57ae8e13971429c41cd40755";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs pluginlib cmake-modules rsm-msgs roscpp rviz interactive-markers visualization-msgs std-msgs tf ];
  propagatedBuildInputs = [ std-srvs cmake-modules pluginlib rsm-msgs roscpp rviz interactive-markers visualization-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rviz_plugins package includes the Robot
		Statemachine GUI plugin for RViz and the waypoint visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
