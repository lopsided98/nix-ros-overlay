
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager-msgs, moveit-core, moveit-simple-controller-manager, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-control-interface";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_control_interface/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "5fc48133d8e6ff9e69253b08414e6d8976d5aaab09247e89720f936e57a2bfbe";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib controller-manager-msgs moveit-core moveit-simple-controller-manager pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
