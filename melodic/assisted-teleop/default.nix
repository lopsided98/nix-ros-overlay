
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, filters, pluginlib, base-local-planner, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, move-base-msgs, actionlib, angles, roslib, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-melodic-assisted-teleop";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/assisted_teleop/0.3.2-0.tar.gz;
    sha256 = "5cf3f26df26c9c7a8045f5d75aa0b6b6fecccd58a38495b850c49b94540969e5";
  };

  propagatedBuildInputs = [ costmap-2d filters pluginlib base-local-planner sensor-msgs message-filters roscpp tf2-ros move-base-msgs actionlib angles roslib geometry-msgs eigen ];
  nativeBuildInputs = [ costmap-2d filters pluginlib base-local-planner sensor-msgs catkin message-filters roscpp tf2-ros move-base-msgs actionlib angles roslib geometry-msgs eigen ];

  meta = {
    description = ''The assisted_teleop node subscribes to a desired trajectory topic
    (geometry_msgs/Twist) and uses TrajectoryPlannerROS to find a valid
    trajectory close to the desired trajectory before republishing. Useful for
    filtering teleop commands while avoiding obstacles. This package also
    contains LaserScanMaxRangeFilter, which is a LaserScan filter plugin that
    takes max range values in a scan and turns them into valid values that are
    slightly less than max range.'';
    #license = lib.licenses.BSD;
  };
}
