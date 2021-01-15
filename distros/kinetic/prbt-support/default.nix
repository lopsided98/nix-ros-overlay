
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-motor-node, catkin, cmake-modules, controller-manager, eigen, joint-state-controller, joint-state-publisher, moveit-core, moveit-ros-planning, pilz-control, prbt-hardware-support, robot-state-publisher, roscpp, roslaunch, rosservice, rostest, rviz, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "47c5c1b013c10eaf489a22e592e349e501078c7b4e54a7cf2257ccac3e3f1fd4";
  };

  buildType = "catkin";
  checkInputs = [ cmake-modules eigen joint-state-publisher moveit-core moveit-ros-planning prbt-hardware-support roslaunch rostest rviz ];
  propagatedBuildInputs = [ canopen-motor-node controller-manager joint-state-controller pilz-control prbt-hardware-support robot-state-publisher roscpp rosservice topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
