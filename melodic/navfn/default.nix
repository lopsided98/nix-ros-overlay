
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, pluginlib, catkin, cmake-modules, rosunit, costmap-2d, nav-core, netpbm, visualization-msgs, roscpp, message-generation, nav-msgs, rosconsole, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-navfn";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/navfn/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "61844c1e582eecbbfdd7e1c87f3cb1915032a9ce8eb686cd6bcd5ef9206c07dd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs pluginlib cmake-modules costmap-2d nav-core netpbm visualization-msgs roscpp message-generation nav-msgs rosconsole tf2-ros ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs pluginlib costmap-2d nav-core visualization-msgs roscpp message-runtime nav-msgs rosconsole tf2-ros ];
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
