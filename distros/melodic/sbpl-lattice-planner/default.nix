
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, roscpp, sbpl, tf2 }:
buildRosPackage {
  pname = "ros-melodic-sbpl-lattice-planner";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_lattice_planner/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "efbfed3e3ac9b17303e77d216eeb675137a63ec6b524088191e4ca06207588c2";
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
