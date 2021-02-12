
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, mir-actions, mir-description, mir-msgs, move-base-msgs, nav-msgs, pythonPackages, robot-state-publisher, rosgraph-msgs, roslaunch, rospy, rospy-message-converter, sensor-msgs, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mir-driver";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/mir_driver/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "32363c178a1ae6ca86da6f414c2bd5497a8128a82d7ad7fb298d94bbe96d7953";
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
