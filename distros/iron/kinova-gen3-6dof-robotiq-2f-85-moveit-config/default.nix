
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, kortex-description, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-iron-kinova-gen3-6dof-robotiq-2f-85-moveit-config";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/iron/kinova_gen3_6dof_robotiq_2f_85_moveit_config/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "922f8aaa3b3a2bdbf73652a6b9761ecbf2a71a9054a506eea91b41e2d84d5d07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui kortex-description moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager picknik-reset-fault-controller picknik-twist-controller robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the gen3 with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsd3 ];
  };
}
