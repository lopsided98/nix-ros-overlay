
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, rosconsole, pluginlib, cmake-modules, sensor-msgs, catkin, nav-core, tf2-ros, roscpp, nav-msgs, message-generation, message-runtime, visualization-msgs, netpbm, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-navfn";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/navfn/1.16.2-0.tar.gz;
    sha256 = "d4795ca8a10f1cb8d8ff7a2949637be11bb6e14ca0d2878731cdd82d20acb271";
  };

  buildInputs = [ costmap-2d rosconsole pluginlib cmake-modules sensor-msgs nav-core tf2-ros roscpp nav-msgs message-generation visualization-msgs netpbm geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d rosconsole pluginlib nav-core sensor-msgs roscpp tf2-ros nav-msgs message-runtime visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''navfn provides a fast interpolated navigation function that can be used to create plans for
        a mobile base. The planner assumes a circular robot and operates on a costmap to find a
        minimum cost plan from a start point to an end point in a grid. The navigation function is
        computed with Dijkstra's algorithm, but support for an A* heuristic may also be added in the
        near future. navfn also provides a ROS wrapper for the navfn planner that adheres to the
        nav_core::BaseGlobalPlanner interface specified in <a href="http://wiki.ros.org/nav_core">nav_core</a>.'';
    #license = lib.licenses.BSD;
  };
}
