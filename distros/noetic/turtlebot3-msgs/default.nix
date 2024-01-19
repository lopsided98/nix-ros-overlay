
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_msgs-release/archive/release/noetic/turtlebot3_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "768e46ad69aff6599a5a5527993d47906a574a825b499a3a6fa8fabacf6763b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
