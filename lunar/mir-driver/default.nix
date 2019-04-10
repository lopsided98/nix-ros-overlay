
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy-message-converter, rosgraph-msgs, rospy, diagnostic-msgs, tf, geometry-msgs, mir-description, pythonPackages, robot-state-publisher, roslaunch, catkin, move-base-msgs, mir-actions, nav-msgs, std-msgs, visualization-msgs, sensor-msgs, dynamic-reconfigure, mir-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-driver";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_driver/1.0.3-0.tar.gz;
    sha256 = "f2e6ee5a022c0a1b575b8e22393755d46e07b36158da17305ff7f135ab4a1f22";
  };

  buildInputs = [ actionlib-msgs geometry-msgs mir-msgs sensor-msgs rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions visualization-msgs dynamic-reconfigure std-msgs diagnostic-msgs roslaunch tf pythonPackages.websocket_client ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs mir-msgs sensor-msgs mir-description rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions robot-state-publisher dynamic-reconfigure std-msgs diagnostic-msgs visualization-msgs tf pythonPackages.websocket_client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    #license = lib.licenses.BSD;
  };
}
