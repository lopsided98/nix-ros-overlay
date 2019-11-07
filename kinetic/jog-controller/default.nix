
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-visual-tools, spacenav-node, jog-msgs, control-msgs, joy, catkin, rviz, moveit-core, actionlib, moveit-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-jog-controller";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_controller/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "4065d481e369b44c65f4dc2e5804d327aadae7245c6cee6ffcd48e07d7555b6e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning moveit-visual-tools jog-msgs control-msgs rviz moveit-core actionlib moveit-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ moveit-visual-tools spacenav-node moveit-ros-planning jog-msgs control-msgs joy rviz moveit-core actionlib moveit-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jog_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
