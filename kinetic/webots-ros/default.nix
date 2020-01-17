
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-webots-ros";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/kinetic/webots_ros/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "65c5871ded85992b98eabb9fdc8e4a2fc01afaf0ed55ed2ad0c1e08aa482b64f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
