
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-motor-node, catkin, cmake-modules, controller-manager, eigen, joint-state-controller, joint-state-publisher, moveit-core, moveit-ros-planning, pilz-control, prbt-hardware-support, robot-state-publisher, roscpp, roslaunch, rosservice, rostest, rviz, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "b86814f440ed26ec5b466d056ca7680f43f2e4db489a515fb91b66bf70bc3b47";
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
