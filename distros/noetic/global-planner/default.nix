
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-global-planner";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/global_planner/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "bd853c996bbe03084e2b3d6b651931873c5f9fee3c5ec85b70c8fb1fe400d15f";
  };

  buildType = "catkin";
  buildInputs = [ angles tf2-geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs navfn pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
