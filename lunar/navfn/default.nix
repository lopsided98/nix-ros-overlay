
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, rosconsole, pluginlib, cmake-modules, tf, pcl, nav-core, catkin, netpbm, nav-msgs, message-generation, message-runtime, visualization-msgs, pcl-ros, roscpp, pcl-conversions, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-navfn";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/navfn/1.15.2-0.tar.gz;
    sha256 = "95262ce9f15b9115288487d5bc581be74caaed3f0f69e3677b0f021000f0a879";
  };

  buildInputs = [ costmap-2d rosconsole pluginlib cmake-modules netpbm pcl nav-core roscpp message-generation nav-msgs visualization-msgs pcl-ros tf pcl-conversions geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d rosconsole pluginlib pcl nav-core roscpp nav-msgs message-runtime visualization-msgs pcl-ros tf pcl-conversions geometry-msgs ];
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
