
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, rosconsole, pluginlib, cmake-modules, tf, netpbm, nav-core, catkin, nav-msgs, message-generation, message-runtime, visualization-msgs, pcl-ros, roscpp, pcl-conversions, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-navfn";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navfn/1.14.4-0.tar.gz;
    sha256 = "fc2982b4daed5a489be13143ffee1ba9d25f8c2eea9b6fcb9d123474f1c27153";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d rosconsole pluginlib tf nav-core roscpp nav-msgs message-runtime pcl-ros visualization-msgs pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ costmap-2d rosconsole pluginlib cmake-modules pcl-conversions nav-core catkin roscpp message-generation nav-msgs visualization-msgs pcl-ros tf netpbm geometry-msgs ];

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
