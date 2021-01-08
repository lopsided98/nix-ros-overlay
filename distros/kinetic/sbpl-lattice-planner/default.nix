
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, sbpl, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-sbpl-lattice-planner";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/sbpl_lattice_planner/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "885d1730be4d68691dfd0ea3146672b902df50505d9990026c5b0ebfd7acecf6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs message-runtime nav-core nav-msgs pluginlib roscpp sbpl tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sbpl_lattice_planner is a global planner plugin for move_base and wraps
    the SBPL search-based planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
