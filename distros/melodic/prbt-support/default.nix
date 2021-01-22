
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-chain-node, canopen-motor-node, catkin, cmake-modules, code-coverage, controller-manager, eigen, joint-state-controller, joint-state-publisher, moveit-core, moveit-ros-planning, pilz-control, pilz-status-indicator-rqt, pilz-testutils, pilz-utils, prbt-hardware-support, robot-state-publisher, roscpp, roslaunch, roslint, rosservice, rostest, rosunit, rviz, sensor-msgs, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-support";
  version = "0.5.21-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_support/0.5.21-1.tar.gz";
    name = "0.5.21-1.tar.gz";
    sha256 = "932983411971aadf5b2d14dd2fdc7ca6c2712165bc32a1fd97db731330a0f5ef";
  };

  buildType = "catkin";
  buildInputs = [ canopen-chain-node pilz-utils roslint sensor-msgs ];
  checkInputs = [ cmake-modules code-coverage eigen joint-state-publisher moveit-core moveit-ros-planning pilz-testutils prbt-hardware-support roslaunch rostest rosunit rviz ];
  propagatedBuildInputs = [ canopen-motor-node controller-manager joint-state-controller pilz-control pilz-status-indicator-rqt prbt-hardware-support robot-state-publisher roscpp rosservice topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
