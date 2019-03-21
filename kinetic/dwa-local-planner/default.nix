
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, nav-core, catkin, roscpp, nav-msgs, eigen, dynamic-reconfigure, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-dwa-local-planner";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/dwa_local_planner/1.14.4-0.tar.gz;
    sha256 = "7b552ce10750a1cdd98115344b812f0f213668133226f83cbbcd662af5a27dfc";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core roscpp nav-msgs dynamic-reconfigure tf eigen ];
  nativeBuildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner nav-core catkin roscpp nav-msgs dynamic-reconfigure tf pcl-conversions eigen ];

  meta = {
    description = ''This package provides an implementation of the Dynamic Window Approach to
        local robot navigation on a plane. Given a global plan to follow and a
        costmap, the local planner produces velocity commands to send to a mobile
        base. This package supports any robot who's footprint can be represented as
        a convex polygon or cicrle, and exposes its configuration as ROS parameters
        that can be set in a launch file. The parameters for this planner are also
        dynamically reconfigurable. This package's ROS wrapper adheres to the
        BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    #license = lib.licenses.BSD;
  };
}
