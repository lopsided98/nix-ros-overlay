
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, mir-actions, mir-description, mir-msgs, move-base-msgs, nav-msgs, pythonPackages, robot-state-publisher, rosgraph-msgs, roslaunch, rospy, rospy-message-converter, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-driver";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_driver/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "b72f6635778d21dec2fd3c412744ae0073e965f87b44ec6ce38903aa4e7fc500";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ actionlib-msgs diagnostic-msgs dynamic-reconfigure geometry-msgs mir-actions mir-description mir-msgs move-base-msgs nav-msgs pythonPackages.websocket_client robot-state-publisher rosgraph-msgs rospy rospy-message-converter sensor-msgs std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A reverse ROS bridge for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
