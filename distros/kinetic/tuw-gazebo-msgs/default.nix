
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-gazebo-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_gazebo_msgs/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "7ddf8cfc75face6c8ff0ec06d205b9b00e5cd512f94dd8322a5cf5928096979f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime roscpp rospy sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
