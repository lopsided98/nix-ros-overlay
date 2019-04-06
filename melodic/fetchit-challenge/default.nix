
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, effort-controllers, robot-state-publisher, rospy, fetch-gazebo }:
buildRosPackage {
  pname = "ros-melodic-fetchit-challenge";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetchit_challenge/0.9.1-0.tar.gz;
    sha256 = "0805738f391830e5c290041438956c70fdfa476e0e18535f3797d904bc0e823f";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager robot-state-publisher effort-controllers rospy fetch-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetchit_challenge package'';
    #license = lib.licenses.BSD;
  };
}
