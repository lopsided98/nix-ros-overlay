
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, catkin, pepper-description, moveit-simple-controller-manager, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-pepper-moveit-config";
  version = "0.0.8";

  src = fetchurl {
    url = https://github.com/ros-naoqi/pepper_moveit_config-release/archive/release/kinetic/pepper_moveit_config/0.0.8-0.tar.gz;
    sha256 = "3d757ea4412b9d35654889bfaad5f6301b558e759493e72ea49ccab1d5da6122";
  };

  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager moveit-ros-move-group robot-state-publisher pepper-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the Pepper robot with the MoveIt Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
