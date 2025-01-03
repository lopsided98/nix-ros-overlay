
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, effort-controllers, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roslaunch, ur-description }:
buildRosPackage {
  pname = "ros-noetic-ur-gazebo";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_gazebo/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "55217f5a8a222feb7798e9d5be15609d533c3c8effd32eeb83c1e5a5d6c63f72";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-manager effort-controllers gazebo-ros gazebo-ros-control joint-state-controller joint-trajectory-controller position-controllers robot-state-publisher ur-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Gazebo wrapper for the Universal UR5/10 robot arms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
