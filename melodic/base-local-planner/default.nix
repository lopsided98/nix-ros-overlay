
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, rosunit, eigen, tf2, nav-msgs, sensor-msgs, dynamic-reconfigure, cmake-modules, tf2-geometry-msgs, rosconsole, tf2-ros, std-msgs, catkin, costmap-2d, nav-core, roscpp, voxel-grid, message-generation, angles, rospy, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-base-local-planner";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/base_local_planner/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "d8051551c9a791d8554bfa7b63fc206ccaba4adba2efd1d79e56f3ee9a92fc4c";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib eigen tf2 nav-msgs sensor-msgs dynamic-reconfigure cmake-modules tf2-geometry-msgs rosconsole tf2-ros std-msgs costmap-2d nav-core roscpp angles rospy voxel-grid message-generation visualization-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure message-runtime pluginlib std-msgs roscpp costmap-2d nav-core eigen visualization-msgs tf2 angles voxel-grid rospy nav-msgs rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
