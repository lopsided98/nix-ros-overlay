
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, moveit-kinematics, catkin, moveit-setup-assistant, joint-state-publisher, rviz, robot-state-publisher, tf, seed-r7-description, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-typef-moveit-config";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_typef_moveit_config/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "6f4d257539d2f1d10aad9a73bfdf3e290a961916db60ac3be7132c44193d9426";
  };

  buildType = "catkin";
  buildInputs = [ seed-r7-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization tf moveit-kinematics moveit-setup-assistant rviz robot-state-publisher seed-r7-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the SEED-Noid-Mover-typeF with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
