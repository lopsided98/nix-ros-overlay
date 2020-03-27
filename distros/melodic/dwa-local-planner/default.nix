
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, base-local-planner, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, eigen, nav-core, nav-msgs, pluginlib, roscpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-dwa-local-planner";
  version = "1.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/dwa_local_planner/1.16.6-1.tar.gz";
    name = "1.16.6-1.tar.gz";
    sha256 = "5e0ee2dc5169c993bf0683dc5e7dc32bd06725097e26480d636d3102e3f54fec";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure eigen nav-core nav-msgs pluginlib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
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
