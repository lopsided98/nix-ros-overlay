
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, kortex-description, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-kinova-gen3-7dof-robotiq-2f-85-moveit-config";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kinova_gen3_7dof_robotiq_2f_85_moveit_config/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "e43ae4f77bfc7c9b50fcfb382ff17e498922d8a515e5dba573716b5f5f180def";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui kortex-description moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager picknik-reset-fault-controller picknik-twist-controller robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the gen3 with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
