
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, rosservice, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.8-0.tar.gz;
    sha256 = "022c43e331c5b47230eadc53367cb3ccb26b5fbad293b91aab33712975868b20";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ cmake-modules moveit-kinematics rostest moveit-core eigen roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice canopen-motor-node rviz robot-state-publisher topic-tools roscpp joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
