
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, trajectory-msgs, catkin, moveit-simple-controller-manager, controller-manager-msgs, moveit-core, actionlib }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-control-interface";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_control_interface/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "94c405b03bee2a9f793c5350d25551c215e10102cb3360b465f14030f96992d7";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  propagatedBuildInputs = [ pluginlib trajectory-msgs moveit-simple-controller-manager controller-manager-msgs moveit-core actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
