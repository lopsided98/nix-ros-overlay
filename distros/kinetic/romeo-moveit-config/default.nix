
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-planners-ompl, moveit-ros-move-group, moveit-simple-controller-manager, robot-state-publisher, romeo-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-romeo-moveit-config";
  version = "0.2.8";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_moveit_config-release/archive/release/kinetic/romeo_moveit_config/0.2.8-0.tar.gz";
    name = "0.2.8-0.tar.gz";
    sha256 = "6f6e1d858123b1d8a774d7957e4d07f4e3cb223f6a7bd7262f6cac1304e984a8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-planners-ompl moveit-ros-move-group moveit-simple-controller-manager robot-state-publisher romeo-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the romeoH37 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
