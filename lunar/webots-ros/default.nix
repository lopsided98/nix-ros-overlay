
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-webots-ros";
  version = "2.0.3-r1";

  src = fetchurl {
    url = https://github.com/omichel/webots_ros-release/archive/release/lunar/webots_ros/2.0.3-1.tar.gz;
    sha256 = "c6ed07a1b25968130f67c6a3111a181a9d413131e76e069a548a2bb66696d56d";
  };

  buildInputs = [ sensor-msgs roscpp message-generation rospy std-msgs tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
