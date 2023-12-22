
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, effort-controllers, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roslaunch, ur-description }:
buildRosPackage {
  pname = "ros-noetic-ur-gazebo";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_gazebo/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "6b090db8d84e6381d49252a8a2405c7c20e54d9912b69134ecd8367d87dd041e";
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
