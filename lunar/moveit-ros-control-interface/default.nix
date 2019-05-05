
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, trajectory-msgs, catkin, moveit-simple-controller-manager, controller-manager-msgs, moveit-core, actionlib }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-control-interface";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_control_interface/0.9.12-1.tar.gz;
    sha256 = "429a1aa99c1d729b7b2bed73ee21beacc860a3f37e256a0b00076a4e2bc72960";
  };

  buildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  propagatedBuildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
