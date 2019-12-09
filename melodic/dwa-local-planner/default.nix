
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, pluginlib, cmake-modules, base-local-planner, catkin, roscpp, costmap-2d, nav-core, eigen, tf2-geometry-msgs, tf2, angles, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-dwa-local-planner";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/dwa_local_planner/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "e7b355667efe48acd5fa41e92ec620cda6e5f0e7fb384ccf7f3153daa0625fd7";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure pluginlib cmake-modules base-local-planner roscpp tf2-geometry-msgs nav-core eigen costmap-2d tf2 angles nav-msgs tf2-ros ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure pluginlib base-local-planner roscpp tf2-geometry-msgs nav-core eigen costmap-2d tf2 nav-msgs tf2-ros ];
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
