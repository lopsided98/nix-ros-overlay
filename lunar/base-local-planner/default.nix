
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, rospy, pcl-ros, tf, pcl-conversions, geometry-msgs, voxel-grid, message-generation, message-runtime, angles, catkin, nav-msgs, std-msgs, roscpp, visualization-msgs, eigen, costmap-2d, cmake-modules, pluginlib, pcl, nav-core, dynamic-reconfigure, rosunit }:
buildRosPackage {
  pname = "ros-lunar-base-local-planner";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/base_local_planner/1.15.2-0.tar.gz;
    sha256 = "29559e2043ff55cf23e399fd286c24c4a892b330c38d1813246779b63cfa726e";
  };

  buildInputs = [ rosconsole pcl-ros rospy tf pcl-conversions geometry-msgs voxel-grid message-generation angles nav-msgs std-msgs roscpp visualization-msgs eigen costmap-2d cmake-modules pluginlib pcl nav-core dynamic-reconfigure ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d rosconsole pluginlib pcl nav-core roscpp rospy voxel-grid nav-msgs message-runtime visualization-msgs pcl-ros std-msgs angles dynamic-reconfigure tf geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
