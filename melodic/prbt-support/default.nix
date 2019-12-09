
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, eigen, rostest, joint-state-controller, prbt-hardware-support, pilz-control, robot-state-publisher, canopen-motor-node, cmake-modules, joint-state-publisher, moveit-core, catkin, roscpp, moveit-ros-planning, topic-tools, roslaunch, rviz, rosservice }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "305cf3ea3a6a9856a99632a748208366fc9dfc44be087f2019cded8354711030";
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
