
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, effort-controllers, robot-state-publisher, rospy, fetch-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-fetchit-challenge";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetchit_challenge/0.8.2-0.tar.gz;
    sha256 = "f3b2f364d011d27ee4b3be8038fed51b194bbe6baf8190e8b7ea55e7b9b78e63";
  };

  buildInputs = [ gazebo-ros controller-manager robot-state-publisher rospy fetch-gazebo ];
  propagatedBuildInputs = [ gazebo-ros controller-manager robot-state-publisher effort-controllers rospy fetch-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetchit_challenge package'';
    #license = lib.licenses.BSD;
  };
}
