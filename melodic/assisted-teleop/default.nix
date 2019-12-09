
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, pluginlib, filters, actionlib, base-local-planner, roslib, catkin, costmap-2d, eigen, roscpp, angles, tf2-ros, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-assisted-teleop";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/assisted_teleop/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "56f3c08c49d88b8801f49b04f690b0d95ba6abe6dcbc0c4794674dd4cb5eb8e6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs pluginlib actionlib filters base-local-planner roslib costmap-2d eigen roscpp angles tf2-ros move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs pluginlib filters base-local-planner actionlib roslib costmap-2d eigen roscpp angles tf2-ros move-base-msgs ];
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
