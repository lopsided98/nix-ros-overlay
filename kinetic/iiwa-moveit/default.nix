
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, effort-controllers, xacro, moveit-ros-visualization, joint-state-controller, moveit-planners-ompl, moveit-ros-warehouse, robot-state-publisher, moveit-simple-controller-manager, position-controllers, gazebo-ros-control, joint-trajectory-controller, joint-state-publisher, moveit-ros-planning-interface, moveit-setup-assistant, catkin, moveit-fake-controller-manager, moveit-ros-move-group, iiwa-description, velocity-controllers }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-moveit";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_moveit/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "d74452c5a6b6e9801b34d886e3836350849c63b7781f31077af587c01f1f95a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher effort-controllers xacro moveit-ros-warehouse robot-state-publisher moveit-setup-assistant position-controllers moveit-ros-move-group moveit-ros-planning-interface moveit-simple-controller-manager velocity-controllers joint-state-controller gazebo-ros-control moveit-ros-visualization joint-trajectory-controller iiwa-description moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package with all the configuration and launch files for using the KUKA LBR IIWA with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
