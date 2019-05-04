
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, trajectory-msgs, catkin, moveit-simple-controller-manager, controller-manager-msgs, moveit-core, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-control-interface";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_control_interface/0.9.15-0.tar.gz;
    sha256 = "61a368d2edcaebf1a09a2294f4a6598f0462ad96b6d95987b9858e371831cd0e";
  };

  buildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  propagatedBuildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
