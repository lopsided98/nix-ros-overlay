
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, sbpl, tf2, nav-msgs, message-generation, message-runtime, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-sbpl-lattice-planner";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_lattice_planner/0.3.2-0.tar.gz;
    sha256 = "e78f8dc5ccf4ffb74f314de47656e49eca331b5cb262d6edfb4ea2729eab56c8";
  };

  buildInputs = [ costmap-2d pluginlib nav-core sbpl tf2 nav-msgs message-generation roscpp geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d pluginlib nav-core sbpl tf2 nav-msgs message-runtime roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The sbpl_lattice_planner is a global planner plugin for move_base and wraps
    the SBPL search-based planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
