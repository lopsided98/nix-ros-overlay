
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, kortex-description, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-ros-warehouse, moveit-setup-assistant, moveit-simple-controller-manager, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-kinova-gen3-lite-moveit-config";
  version = "0.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/lyrical/kinova_gen3_lite_moveit_config/0.2.5-4.tar.gz";
    name = "0.2.5-4.tar.gz";
    sha256 = "f402b707aef6cf0b15da25336a43375389cc625859051f24a133c98b61649c89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui kortex-description moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-ros-warehouse moveit-setup-assistant moveit-simple-controller-manager picknik-reset-fault-controller picknik-twist-controller robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the gen3_lite with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
