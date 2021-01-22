
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, jog-msgs, joy, moveit-core, moveit-msgs, moveit-ros-planning, moveit-visual-tools, roscpp, roslaunch, rviz, spacenav-node }:
buildRosPackage {
  pname = "ros-kinetic-jog-controller";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_controller/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "4065d481e369b44c65f4dc2e5804d327aadae7245c6cee6ffcd48e07d7555b6e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ actionlib control-msgs jog-msgs joy moveit-core moveit-msgs moveit-ros-planning moveit-visual-tools roscpp rviz spacenav-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jog_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
