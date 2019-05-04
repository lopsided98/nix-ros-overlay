
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_msgs-release/archive/release/kinetic/turtlebot3_msgs/1.0.0-0.tar.gz;
    sha256 = "d1784363fbd5e87c349d45d09b25f7c59f02d603d8fab5739d06dfd94197c589";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
