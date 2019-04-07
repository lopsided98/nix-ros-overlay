
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, trajectory-msgs, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-gazebo-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_gazebo_msgs/0.0.13-0.tar.gz;
    sha256 = "126d0a9d1083f1d6e1c05b617f46f4c00e72dbd5a26a4dfa16490465d7dcc181";
  };

  buildInputs = [ std-srvs message-generation rospy std-msgs trajectory-msgs sensor-msgs roscpp geometry-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime rospy std-msgs trajectory-msgs sensor-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures.'';
    #license = lib.licenses.BSD;
  };
}
