
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, pluginlib, filters, tf, actionlib, base-local-planner, roslib, costmap-2d, catkin, eigen, roscpp, angles, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-assisted-teleop";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/assisted_teleop/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "f27c85fd3b9fa0f011d1dd8cf32cc7b80b0051e297faf7c0687fb4391acdb702";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs pluginlib actionlib filters base-local-planner roslib tf costmap-2d eigen roscpp angles move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs pluginlib tf filters base-local-planner actionlib roslib costmap-2d eigen roscpp angles move-base-msgs ];
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
