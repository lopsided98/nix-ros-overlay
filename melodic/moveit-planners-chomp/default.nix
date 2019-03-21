
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rostest, moveit-core, roscpp, moveit-ros-planning-interface, chomp-motion-planner }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-chomp";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_chomp/1.0.1-0.tar.gz;
    sha256 = "2b2fb87420adf3908b59b71bc36bc9a3026f05667d7c84a6ae68a2f572df74c5";
  };

  checkInputs = [ rostest moveit-ros-planning-interface ];
  propagatedBuildInputs = [ pluginlib chomp-motion-planner roscpp moveit-core ];
  nativeBuildInputs = [ pluginlib moveit-core catkin roscpp chomp-motion-planner ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
