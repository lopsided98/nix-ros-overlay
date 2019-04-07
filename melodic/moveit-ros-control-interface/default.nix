
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, trajectory-msgs, catkin, moveit-simple-controller-manager, controller-manager-msgs, moveit-core, actionlib }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-control-interface";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_control_interface/1.0.1-0.tar.gz;
    sha256 = "ab7d709853069646411c7051fabf921f2734dbf55858457e9525024f21877e20";
  };

  buildInputs = [ moveit-simple-controller-manager controller-manager-msgs moveit-core pluginlib actionlib trajectory-msgs ];
  propagatedBuildInputs = [ moveit-simple-controller-manager controller-manager-msgs moveit-core pluginlib actionlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
