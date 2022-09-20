
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-global-planner";
  version = "1.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/global_planner/1.17.2-1.tar.gz";
    name = "1.17.2-1.tar.gz";
    sha256 = "feb8a04bb141d5f90d4e2e0985845b15fcbbe9c66c122c85deeb07a1535f827e";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin tf2-geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure geometry-msgs nav-core nav-msgs navfn pluginlib roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A path planner library and node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
