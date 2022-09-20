
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, nav-core, nav-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-neo-local-planner";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/neobotix/neo_local_planner-release/archive/release/melodic/neo_local_planner/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "9ddcb53aceee36a8d5c6a9831fcf15dc096b01975f96059d7a7574211072d250";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure nav-core nav-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a spline based implementation to local robot navigation on a plane.

		This package's ROS wrapper adheres to the
        BaseLocalPlanner interface specified in the <a href="http://wiki.ros.org/nav_core">nav_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
