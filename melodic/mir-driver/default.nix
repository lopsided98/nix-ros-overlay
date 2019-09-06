
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy-message-converter, rosgraph-msgs, rospy, diagnostic-msgs, tf, geometry-msgs, mir-description, pythonPackages, robot-state-publisher, roslaunch, catkin, move-base-msgs, mir-actions, nav-msgs, std-msgs, visualization-msgs, sensor-msgs, dynamic-reconfigure, mir-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-driver";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_driver/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "da99d11e458c15ad666321a49d43326ee91a75b969f98f8bb904c7bf0a071188";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch actionlib-msgs geometry-msgs sensor-msgs rospy rospy-message-converter rosgraph-msgs move-base-msgs nav-msgs mir-actions visualization-msgs dynamic-reconfigure std-msgs diagnostic-msgs pythonPackages.websocket_client tf mir-msgs ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs sensor-msgs mir-description mir-actions rosgraph-msgs rospy-message-converter std-msgs nav-msgs move-base-msgs robot-state-publisher dynamic-reconfigure rospy diagnostic-msgs pythonPackages.websocket_client tf visualization-msgs mir-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
