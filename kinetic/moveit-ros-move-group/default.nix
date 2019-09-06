
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, std-srvs, moveit-resources, pluginlib, tf, moveit-kinematics, catkin, rostest, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-move-group";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_move_group/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "8e3485df31cdfd7300a2961a9976bcac6f9afc4a396be40370bbf5dcbd3bc5f3";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning std-srvs pluginlib tf moveit-core actionlib roscpp ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-ros-planning std-srvs pluginlib tf moveit-kinematics moveit-core actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
