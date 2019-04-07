
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy-message-converter, rosgraph-msgs, rospy, diagnostic-msgs, tf, geometry-msgs, mir-description, pythonPackages, robot-state-publisher, roslaunch, catkin, move-base-msgs, mir-actions, nav-msgs, std-msgs, visualization-msgs, sensor-msgs, dynamic-reconfigure, mir-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-driver";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_driver/1.0.3-0.tar.gz;
    sha256 = "7d4cc4bb4f9ec504921acb945e036711c21a75de8dadafc38260dea35ef0b202";
  };

  buildInputs = [ actionlib-msgs geometry-msgs mir-msgs sensor-msgs rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions visualization-msgs dynamic-reconfigure std-msgs diagnostic-msgs roslaunch tf pythonPackages.websocket_client ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs mir-msgs sensor-msgs mir-description rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions robot-state-publisher dynamic-reconfigure std-msgs diagnostic-msgs visualization-msgs tf pythonPackages.websocket_client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
