
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pluginlib, cmake-modules, tf, base-local-planner, catkin, costmap-2d, nav-core, eigen, pcl-conversions, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dwa-local-planner";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/dwa_local_planner/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "7f86aa2ffc55815d90a68c88001f515917ea3e95d33b57ab278051e28f8db12e";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pluginlib tf base-local-planner cmake-modules costmap-2d nav-core eigen pcl-conversions roscpp nav-msgs ];
  propagatedBuildInputs = [ dynamic-reconfigure pluginlib tf base-local-planner costmap-2d nav-core eigen roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an implementation of the Dynamic Window Approach to
        local robot navigation on a plane. Given a global plan to follow and a
        costmap, the local planner produces velocity commands to send to a mobile
        base. This package supports any robot who's footprint can be represented as
        a convex polygon or cicrle, and exposes its configuration as ROS parameters
        that can be set in a launch file. The parameters for this planner are also
        dynamically reconfigurable. This package's ROS wrapper adheres to the
        BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
