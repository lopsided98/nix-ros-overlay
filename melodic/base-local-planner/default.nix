
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, rospy, geometry-msgs, voxel-grid, message-generation, message-runtime, angles, tf2-geometry-msgs, catkin, tf2-ros, nav-msgs, std-msgs, visualization-msgs, roscpp, eigen, costmap-2d, cmake-modules, pluginlib, sensor-msgs, nav-core, tf2, dynamic-reconfigure, rosunit }:
buildRosPackage {
  pname = "ros-melodic-base-local-planner";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/base_local_planner/1.16.2-0.tar.gz;
    sha256 = "1c14d73638bd309260ffb06d9a97853ab875b6ab6d6e6723ca8398f6ae0d58a8";
  };

  buildInputs = [ rosconsole tf2-geometry-msgs tf2-ros nav-msgs rospy std-msgs dynamic-reconfigure roscpp visualization-msgs geometry-msgs eigen costmap-2d cmake-modules pluginlib sensor-msgs nav-core tf2 voxel-grid message-generation angles ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d rosconsole pluginlib sensor-msgs nav-core tf2-ros rospy tf2 voxel-grid nav-msgs message-runtime visualization-msgs dynamic-reconfigure std-msgs angles roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    #license = lib.licenses.BSD;
  };
}
