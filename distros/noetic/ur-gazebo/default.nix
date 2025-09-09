
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, effort-controllers, gazebo-ros, gazebo-ros-control, joint-state-controller, joint-trajectory-controller, position-controllers, robot-state-publisher, roslaunch, ur-description }:
buildRosPackage {
  pname = "ros-noetic-ur-gazebo";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/universal_robot-release/archive/release/noetic/ur_gazebo/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "a11109b2d9a6a7dd7710b28204b9fc14a599033733a9a6337329a1346db02f61";
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
