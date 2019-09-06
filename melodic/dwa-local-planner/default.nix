
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, tf2-geometry-msgs, sensor-msgs, nav-core, catkin, tf2-ros, tf2, nav-msgs, angles, dynamic-reconfigure, roscpp, eigen }:
buildRosPackage {
  pname = "ros-melodic-dwa-local-planner";
  version = "1.16.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/dwa_local_planner/1.16.2-0.tar.gz";
    name = "1.16.2-0.tar.gz";
    sha256 = "e142fe402484f27336add5adf42e945d56d2495c629181704c8f2263757c0310";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d cmake-modules pluginlib tf2-geometry-msgs base-local-planner sensor-msgs nav-core tf2-ros tf2 nav-msgs dynamic-reconfigure angles roscpp eigen ];
  propagatedBuildInputs = [ costmap-2d pluginlib tf2-geometry-msgs base-local-planner sensor-msgs nav-core tf2-ros tf2 nav-msgs dynamic-reconfigure roscpp eigen ];
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
