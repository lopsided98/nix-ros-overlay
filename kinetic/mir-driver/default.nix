
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, tf, actionlib-msgs, nav-msgs, sensor-msgs, diagnostic-msgs, mir-actions, dynamic-reconfigure, robot-state-publisher, rospy-message-converter, mir-msgs, move-base-msgs, std-msgs, catkin, pythonPackages, rospy, rosgraph-msgs, roslaunch, mir-description, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-driver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_driver/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "94fd8404a52b48030c960461863968b9a3466122a3f18678e3ac951beeca8869";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs diagnostic-msgs mir-actions dynamic-reconfigure nav-msgs std-msgs roslaunch tf pythonPackages.websocket_client rospy-message-converter mir-msgs actionlib-msgs visualization-msgs rospy rosgraph-msgs move-base-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs diagnostic-msgs dynamic-reconfigure nav-msgs robot-state-publisher std-msgs mir-actions tf pythonPackages.websocket_client rospy-message-converter mir-msgs mir-description actionlib-msgs visualization-msgs rospy rosgraph-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
