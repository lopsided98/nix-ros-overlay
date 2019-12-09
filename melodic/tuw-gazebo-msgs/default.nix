
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-generation, geometry-msgs, std-msgs, std-srvs, catkin, rospy, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-tuw-gazebo-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_gazebo_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "126d0a9d1083f1d6e1c05b617f46f4c00e72dbd5a26a4dfa16490465d7dcc181";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs rospy roscpp message-generation ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service data structures.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
