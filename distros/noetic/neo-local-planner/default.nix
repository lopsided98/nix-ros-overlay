
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, nav-core, nav-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-neo-local-planner";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/neobotix/neo_local_planner-release/archive/release/noetic/neo_local_planner/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "40b93b3cde461c30dd909faa95aca65cf4619191b3e4178cc9c3fa65bb4891ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure nav-core nav-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a spline based implementation to local robot navigation on a plane.

		This package's ROS wrapper adheres to the
        BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
