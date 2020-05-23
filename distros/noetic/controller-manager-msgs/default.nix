
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pythonPackages, rospy, rosservice, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-controller-manager-msgs";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/controller_manager_msgs/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "3236788a50472c9e36f99794152bba69b1135559e16db419a8083200a5446628";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy rosservice std-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
