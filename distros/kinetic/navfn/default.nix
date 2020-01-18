
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, netpbm, pcl-conversions, pcl-ros, pluginlib, rosconsole, roscpp, rosunit, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-navfn";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navfn/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "8f607f68d59f3f3639d85c5f28aeda8d49eee123c3da42ef0d91d35a2c6bbb32";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation netpbm ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs message-runtime nav-core nav-msgs pcl-conversions pcl-ros pluginlib rosconsole roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''navfn provides a fast interpolated navigation function that can be used to create plans for
        a mobile base. The planner assumes a circular robot and operates on a costmap to find a
        minimum cost plan from a start point to an end point in a grid. The navigation function is
        computed with Dijkstra's algorithm, but support for an A* heuristic may also be added in the
        near future. navfn also provides a ROS wrapper for the navfn planner that adheres to the
        nav_core::BaseGlobalPlanner interface specified in <a href="http://wiki.ros.org/nav_core">nav_core</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
