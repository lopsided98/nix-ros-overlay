
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, filters, pluginlib, base-local-planner, sensor-msgs, catkin, message-filters, roscpp, move-base-msgs, roslib, actionlib, angles, tf, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-lunar-assisted-teleop";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/assisted_teleop/0.2.1-0.tar.gz;
    sha256 = "a25d7bc029f128f08eab5221a191b74c85760272d362d9b701d0979c3c45115d";
  };

  buildInputs = [ costmap-2d filters pluginlib base-local-planner sensor-msgs message-filters roscpp move-base-msgs roslib actionlib angles tf geometry-msgs eigen ];
  propagatedBuildInputs = [ costmap-2d filters pluginlib base-local-planner sensor-msgs message-filters roscpp move-base-msgs roslib actionlib angles tf geometry-msgs eigen ];
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
