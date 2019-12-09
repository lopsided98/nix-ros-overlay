
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, sbpl, pluginlib, catkin, tf2, costmap-2d, nav-core, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-sbpl-lattice-planner";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_lattice_planner/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "efbfed3e3ac9b17303e77d216eeb675137a63ec6b524088191e4ca06207588c2";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs sbpl pluginlib roscpp costmap-2d nav-core tf2 message-generation nav-msgs ];
  propagatedBuildInputs = [ geometry-msgs sbpl pluginlib roscpp costmap-2d nav-core tf2 message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sbpl_lattice_planner is a global planner plugin for move_base and wraps
    the SBPL search-based planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
