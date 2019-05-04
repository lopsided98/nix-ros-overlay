
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, controller-manager, joint-state-controller, ur-description, catkin, joint-trajectory-controller, rostopic, robot-state-publisher, effort-controllers, roslaunch, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-ur-gazebo";
  version = "1.2.5";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_gazebo/1.2.5-0.tar.gz;
    sha256 = "2a9f1b9e0ac888656638b4c48aa8b866786461ba0f482c6d8398d990a9fb985b";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager joint-state-controller ur-description joint-trajectory-controller rostopic robot-state-publisher effort-controllers gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo wrapper for the Universal UR5/10 robot arms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
