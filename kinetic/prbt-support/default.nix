
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosservice, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, clang, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "263c171c464b6d01aef23dfc12d61e21ff27ed79d1515bf090f6581d8f935731";
  };

  buildType = "catkin";
  buildInputs = [ roscpp clang ];
  checkInputs = [ moveit-ros-planning cmake-modules prbt-hardware-support rostest rviz moveit-core eigen roslaunch joint-state-publisher ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice canopen-motor-node robot-state-publisher topic-tools roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
