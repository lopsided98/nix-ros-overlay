
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, canopen-motor-node, catkin, cmake-modules, code-coverage, controller-manager, eigen, joint-state-controller, joint-state-publisher, moveit-core, moveit-ros-planning, robot-state-publisher, roscpp, roslaunch, roslint, rosservice, rostest, rosunit, rviz, sensor-msgs, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-support";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_prbt_support/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e18673001b74ec83b9a3417f45e9bc7f86018b6a79b600be669eb800c4cd37fd";
  };

  buildType = "catkin";
  buildInputs = [ roslint sensor-msgs ];
  checkInputs = [ cmake-modules code-coverage eigen joint-state-publisher moveit-core moveit-ros-planning roslaunch rostest rosunit rviz ];
  propagatedBuildInputs = [ canopen-motor-node controller-manager joint-state-controller robot-state-publisher roscpp rosservice topic-tools xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
