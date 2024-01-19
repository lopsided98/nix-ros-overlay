
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, base-local-planner, catkin, costmap-2d, eigen, filters, geometry-msgs, message-filters, move-base-msgs, pluginlib, roscpp, roslib, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-assisted-teleop";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/assisted_teleop/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "9e042f7baa2bde5b61167779213879d69fd495edc48afdb0ba4d407878256af2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib angles base-local-planner costmap-2d eigen filters geometry-msgs message-filters move-base-msgs pluginlib roscpp roslib sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The assisted_teleop node subscribes to a desired trajectory topic
    (geometry_msgs/Twist) and uses TrajectoryPlannerROS to find a valid
    trajectory close to the desired trajectory before republishing. Useful for
    filtering teleop commands while avoiding obstacles. This package also
    contains LaserScanMaxRangeFilter, which is a LaserScan filter plugin that
    takes max range values in a scan and turns them into valid values that are
    slightly less than max range.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
