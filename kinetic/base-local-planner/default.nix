
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, tf, rosunit, eigen, nav-msgs, dynamic-reconfigure, cmake-modules, pcl-ros, std-msgs, catkin, costmap-2d, nav-core, roscpp, voxel-grid, message-generation, angles, rospy, pcl-conversions, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-base-local-planner";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/base_local_planner/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "728390ded2b54d2846e65a72c557be950be1997963d814ac3052e0d206cd584b";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros geometry-msgs dynamic-reconfigure pluginlib std-msgs tf cmake-modules costmap-2d nav-core eigen pcl-conversions rospy roscpp angles voxel-grid message-generation nav-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pcl-ros geometry-msgs dynamic-reconfigure message-runtime pluginlib std-msgs tf costmap-2d nav-core eigen roscpp angles voxel-grid rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
