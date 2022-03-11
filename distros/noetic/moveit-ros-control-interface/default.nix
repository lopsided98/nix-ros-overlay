
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager-msgs, moveit-core, moveit-simple-controller-manager, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-control-interface";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_control_interface/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "3e2dbcb59f7d464d5eb36a27ebda907433d210a2a8309697a7ddeab1e632a963";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib controller-manager-msgs moveit-core moveit-simple-controller-manager pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
