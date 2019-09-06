
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_msgs-release/archive/release/melodic/turtlebot3_msgs/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "45317e8776023604286708e4f7f9b206d3d64e59601af91849a5f80b94cbd0db";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
