
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy-message-converter, rosgraph-msgs, rospy, diagnostic-msgs, tf, geometry-msgs, mir-description, pythonPackages, robot-state-publisher, roslaunch, catkin, move-base-msgs, mir-actions, nav-msgs, std-msgs, visualization-msgs, sensor-msgs, dynamic-reconfigure, mir-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-driver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_driver/1.0.4-1.tar.gz;
    sha256 = "f1e9acc7c09ebaf3db0eebdea7e1e43c41d6a89b26b99b69b13910800eb389ae";
  };

  buildInputs = [ roslaunch actionlib-msgs geometry-msgs sensor-msgs rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions visualization-msgs dynamic-reconfigure std-msgs diagnostic-msgs pythonPackages.websocket_client tf mir-msgs ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs sensor-msgs mir-description rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions robot-state-publisher dynamic-reconfigure std-msgs diagnostic-msgs pythonPackages.websocket_client tf visualization-msgs mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
