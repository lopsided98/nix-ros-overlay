
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager-msgs, moveit-core, moveit-simple-controller-manager, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-control-interface";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_control_interface/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "e9d5a74b0dc4dba5d9f02444924c8db143cb16d79d27246e2ce34101f7c2abac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib controller-manager-msgs moveit-core moveit-simple-controller-manager pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
