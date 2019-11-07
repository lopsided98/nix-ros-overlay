
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-visualization, joint-trajectory-controller, position-controllers, moveit-simple-controller-manager, joint-state-controller, moveit-planners-ompl, robot-state-publisher, moveit-ros-planning-interface, joint-state-publisher, xacro, catkin, velocity-controllers, iiwa-description, moveit-ros-move-group, moveit-ros-warehouse, effort-controllers, gazebo-ros-control, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-moveit";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_moveit/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "d74452c5a6b6e9801b34d886e3836350849c63b7781f31077af587c01f1f95a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager joint-state-controller moveit-ros-move-group iiwa-description moveit-ros-visualization velocity-controllers joint-trajectory-controller moveit-setup-assistant position-controllers moveit-simple-controller-manager moveit-ros-planning-interface moveit-ros-warehouse robot-state-publisher effort-controllers joint-state-publisher xacro gazebo-ros-control moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package with all the configuration and launch files for using the KUKA LBR IIWA with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
