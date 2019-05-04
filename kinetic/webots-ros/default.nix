
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-webots-ros";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/omichel/webots_ros-release/archive/release/kinetic/webots_ros/2.0.1-1.tar.gz;
    sha256 = "b798ca0fe4466199da54fe01c75e47fe71ff51a665d2b99f3d9316065b1991a1";
  };

  buildInputs = [ std-msgs message-generation roscpp rospy ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
