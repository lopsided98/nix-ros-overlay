
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, pcl-ros, tf, pcl-conversions, geometry-msgs, voxel-grid, message-generation, message-runtime, angles, catkin, nav-msgs, std-msgs, roscpp, eigen, costmap-2d, pluginlib, cmake-modules, nav-core, dynamic-reconfigure, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-base-local-planner";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/base_local_planner/1.14.4-0.tar.gz;
    sha256 = "5f642b0002e3c932e548ee5fb7f71fc2569f50621885aafe6400796ac320daf7";
  };

  buildInputs = [ costmap-2d pluginlib cmake-modules tf nav-core rospy voxel-grid message-generation nav-msgs pcl-ros std-msgs angles dynamic-reconfigure roscpp pcl-conversions geometry-msgs eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ costmap-2d pluginlib tf nav-core rospy voxel-grid nav-msgs message-runtime pcl-ros std-msgs angles dynamic-reconfigure roscpp geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
