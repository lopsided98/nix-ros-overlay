
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, eigen, rostest, joint-state-controller, prbt-hardware-support, pilz-control, robot-state-publisher, canopen-motor-node, cmake-modules, joint-state-publisher, moveit-core, catkin, roscpp, moveit-ros-planning, topic-tools, roslaunch, rviz, rosservice }:
buildRosPackage {
  pname = "ros-kinetic-prbt-support";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/prbt_support/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "9adab5bcb36f2740debe22a6a23905e7901fb96c8e3bd13c24a0aa4b8ba8cde4";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ moveit-core joint-state-publisher prbt-hardware-support cmake-modules rviz eigen moveit-ros-planning roslaunch rostest ];
  propagatedBuildInputs = [ xacro pilz-control prbt-hardware-support controller-manager robot-state-publisher canopen-motor-node roscpp topic-tools rosservice joint-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
