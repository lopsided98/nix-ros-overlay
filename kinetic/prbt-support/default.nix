
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-kinematics, rosservice, joint-state-controller, prbt-hardware-support, rviz, moveit-core, robot-state-publisher, roslaunch, joint-state-publisher, xacro, pilz-control, catkin, canopen-motor-node, roscpp, controller-manager, cmake-modules, rostest, eigen, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.9-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.9-1.tar.gz;
    sha256 = "67644deb2d7686b7481abdeb48a1230100a4da872b25d38fac67703230633768";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ cmake-modules prbt-hardware-support moveit-kinematics rostest moveit-core eigen roslaunch ];
  propagatedBuildInputs = [ controller-manager joint-state-controller pilz-control prbt-hardware-support rosservice canopen-motor-node rviz robot-state-publisher topic-tools roscpp joint-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
