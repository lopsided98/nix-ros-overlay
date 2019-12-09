
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, controller-manager, robot-state-publisher, position-controllers, catkin, gazebo-ros, rostopic, ur-e-description, gazebo-ros-control, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-ur-e-gazebo";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_e_gazebo/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "a96bfabb8158f2c24d2f51d43d33d13dfd6cf9f42f7a4084d070c7e514bacc20";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ effort-controllers controller-manager robot-state-publisher position-controllers gazebo-ros rostopic ur-e-description gazebo-ros-control joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
