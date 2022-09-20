
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, sbpl, tf, tf2 }:
buildRosPackage {
  pname = "ros-melodic-sbpl-lattice-planner";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_lattice_planner/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "3e0c9722b80b6dabbe65028a6d9396b526294c540b59e7f4a5c49c29e3ec09d8";
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
