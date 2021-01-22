
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, eigen, geometry-msgs, message-generation, message-runtime, nav-core, nav-msgs, pluginlib, rosconsole, roscpp, rospy, rosunit, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs, voxel-grid }:
buildRosPackage {
  pname = "ros-noetic-base-local-planner";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/base_local_planner/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "67075742009295b3faf50b1003c185472ce7ace920d74412b83dafd2c3bfbba5";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation tf2-geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ angles costmap-2d dynamic-reconfigure eigen geometry-msgs message-runtime nav-core nav-msgs pluginlib rosconsole roscpp rospy sensor-msgs std-msgs tf2 tf2-ros visualization-msgs voxel-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides implementations of the Trajectory Rollout and Dynamic Window approaches to local robot navigation on a plane. Given a plan to follow and a costmap, the controller produces velocity commands to send to a mobile base. This package supports both holonomic and non-holonomic robots, any robot footprint that can be represented as a convex polygon or circle, and exposes its configuration as ROS parameters that can be set in a launch file. This package's ROS wrapper adheres to the BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
