
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, pcl, nav-core, catkin, roscpp, nav-msgs, eigen, dynamic-reconfigure, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-lunar-dwa-local-planner";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/dwa_local_planner/1.15.2-0.tar.gz;
    sha256 = "e564144d12b92221a120a8d1b39204dccaf354a8dc11b648e9a3263628be4b0c";
  };

  buildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner pcl nav-core roscpp nav-msgs dynamic-reconfigure tf pcl-conversions eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner pcl nav-core roscpp nav-msgs dynamic-reconfigure tf eigen ];
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
    #license = lib.licenses.BSD;
  };
}
