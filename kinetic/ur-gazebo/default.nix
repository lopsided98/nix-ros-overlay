
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, controller-manager, robot-state-publisher, position-controllers, catkin, gazebo-ros, rostopic, gazebo-ros-control, ur-description, joint-trajectory-controller, roslaunch, joint-state-controller }:
buildRosPackage {
  pname = "ros-kinetic-ur-gazebo";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_gazebo/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "c5df0f123c2106cc37b7b7cf4a464b99c691721502b29387b13cb5ea6d3cd36c";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ effort-controllers controller-manager robot-state-publisher position-controllers gazebo-ros rostopic gazebo-ros-control ur-description joint-trajectory-controller joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
