
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager-msgs, moveit-core, moveit-simple-controller-manager, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-control-interface";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_control_interface/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "86f51712fef6308ec700345b468be3ca094320362cd07cab72adf9c89217170c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib controller-manager-msgs moveit-core moveit-simple-controller-manager pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
