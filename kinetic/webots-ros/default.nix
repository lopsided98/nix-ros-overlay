
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-webots-ros";
  version = "2.0.2-r1";

  src = fetchurl {
    url = https://github.com/omichel/webots_ros-release/archive/release/kinetic/webots_ros/2.0.2-1.tar.gz;
    sha256 = "b6d7d457f61081ebb15ad045ce9d2153d45ca5b6959aeafeffe14154ad696aa8";
  };

  buildInputs = [ sensor-msgs roscpp message-generation rospy std-msgs tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
