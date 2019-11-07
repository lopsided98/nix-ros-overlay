
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, sbpl, tf2, nav-msgs, message-generation, message-runtime, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sbpl-lattice-planner";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/sbpl_lattice_planner/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "885d1730be4d68691dfd0ea3146672b902df50505d9990026c5b0ebfd7acecf6";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d pluginlib nav-core sbpl tf2 nav-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core sbpl tf2 nav-msgs message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sbpl_lattice_planner is a global planner plugin for move_base and wraps
    the SBPL search-based planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
