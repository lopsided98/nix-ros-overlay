
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-gazebo-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_gazebo_msgs/0.0.11-0.tar.gz;
    sha256 = "7ddf8cfc75face6c8ff0ec06d205b9b00e5cd512f94dd8322a5cf5928096979f";
  };

  propagatedBuildInputs = [ std-srvs message-runtime rospy std-msgs trajectory-msgs sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ std-srvs trajectory-msgs sensor-msgs catkin message-generation rospy std-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Message and service data structures.'';
    #license = lib.licenses.BSD;
  };
}
