
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-planners-ompl, moveit-ros-move-group, moveit-simple-controller-manager, pepper-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-kinetic-pepper-moveit-config";
  version = "0.0.8";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_moveit_config-release/archive/release/kinetic/pepper_moveit_config/0.0.8-0.tar.gz";
    name = "0.0.8-0.tar.gz";
    sha256 = "3d757ea4412b9d35654889bfaad5f6301b558e759493e72ea49ccab1d5da6122";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-planners-ompl moveit-ros-move-group moveit-simple-controller-manager pepper-description robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the Pepper robot with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
