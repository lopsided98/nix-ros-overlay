
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, eigen, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pcl-conversions, pcl-ros, pluginlib, roscpp, rospy, rosunit, std-msgs, tf, voxel-grid }:
buildRosPackage {
  pname = "ros-kinetic-base-local-planner";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/base_local_planner/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "f4064ec0b859c756c28faafa8710f0bb8f31b9fccb7351cf1403c537ae35ba18";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation pcl-conversions ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles costmap-2d dynamic-reconfigure eigen geometry-msgs message-runtime nav-core nav-msgs pcl-ros pluginlib roscpp rospy std-msgs tf voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
