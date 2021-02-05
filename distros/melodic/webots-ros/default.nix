
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-webots-ros";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros-release/archive/release/melodic/webots_ros/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "30d11297e55c1a268ce53d9cc3fcec78cffb57d0846a5105c1736e2fdf1af650";
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
