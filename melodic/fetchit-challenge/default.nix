
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, catkin, effort-controllers, robot-state-publisher, rospy, fetch-gazebo }:
buildRosPackage {
  pname = "ros-melodic-fetchit-challenge";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetchit_challenge/0.9.0-0.tar.gz;
    sha256 = "3b8d90b7159c0614c3b36f235a963864a39e8ad8c1093a95329fcc3352fb587b";
  };

  propagatedBuildInputs = [ gazebo-ros controller-manager robot-state-publisher effort-controllers rospy fetch-gazebo ];
  nativeBuildInputs = [ gazebo-ros controller-manager robot-state-publisher rospy fetch-gazebo catkin ];

  meta = {
    description = ''The fetchit_challenge package'';
    #license = lib.licenses.BSD;
  };
}
