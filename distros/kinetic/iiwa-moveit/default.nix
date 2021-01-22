
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, effort-controllers, gazebo-ros-control, iiwa-description, joint-state-controller, joint-state-publisher, joint-trajectory-controller, moveit-fake-controller-manager, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, position-controllers, robot-state-publisher, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-moveit";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_moveit/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "d74452c5a6b6e9801b34d886e3836350849c63b7781f31077af587c01f1f95a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ effort-controllers gazebo-ros-control iiwa-description joint-state-controller joint-state-publisher joint-trajectory-controller moveit-fake-controller-manager moveit-planners-ompl moveit-ros-move-group moveit-ros-planning-interface moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager position-controllers robot-state-publisher velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package with all the configuration and launch files for using the KUKA LBR IIWA with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
