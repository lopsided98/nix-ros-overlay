
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, sbpl, tf, tf2 }:
buildRosPackage {
  pname = "ros-noetic-sbpl-lattice-planner";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/sbpl_lattice_planner/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "418218d25809274f917a61e97ac8fedee565b61154fd28e76adb7301b57b4e13";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs message-runtime nav-core nav-msgs pluginlib roscpp sbpl tf tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sbpl_lattice_planner is a global planner plugin for move_base and wraps
    the SBPL search-based planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
