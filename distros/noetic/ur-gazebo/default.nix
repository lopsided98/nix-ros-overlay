
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, effort-controllers, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roslaunch, ur-description }:
buildRosPackage {
  pname = "ros-noetic-ur-gazebo";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_gazebo/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "78eead524cf56d0c372c723c91219a95ad2fe1fa672f611d0740c17d2acd305f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager effort-controllers gazebo-ros gazebo-ros-control joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher ur-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
