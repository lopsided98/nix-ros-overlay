
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-controller-manager-msgs";
  version = "0.18.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/controller_manager_msgs/0.18.4-1.tar.gz";
    name = "0.18.4-1.tar.gz";
    sha256 = "6765242a3a7e2a1e92fe831d01d499286e677dea3f88bc7917c2c3375a96c125";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
