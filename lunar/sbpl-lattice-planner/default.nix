
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, sbpl, tf2, nav-msgs, message-generation, message-runtime, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-sbpl-lattice-planner";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/sbpl_lattice_planner/0.2.1-0.tar.gz;
    sha256 = "ee6a8f82eb4fe62368fad9ffa46509563bd8ddc1c2c021a21b1c3f3c07f7ed9c";
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
