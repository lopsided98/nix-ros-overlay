
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, base-local-planner, catkin, costmap-2d, eigen, filters, geometry-msgs, message-filters, move-base-msgs, pluginlib, roscpp, roslib, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-assisted-teleop";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/assisted_teleop/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "f27c85fd3b9fa0f011d1dd8cf32cc7b80b0051e297faf7c0687fb4391acdb702";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib angles base-local-planner costmap-2d eigen filters geometry-msgs message-filters move-base-msgs pluginlib roscpp roslib sensor-msgs tf ];
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
