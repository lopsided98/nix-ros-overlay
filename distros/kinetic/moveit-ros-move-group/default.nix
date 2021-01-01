
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-move-group";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_move_group/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "5e1258efb594bbe7de2983803c58c0204339217948d3cbe80fea5b05e87e26fe";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
