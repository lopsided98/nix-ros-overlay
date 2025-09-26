
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bcr-arm-description, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, topic-based-ros2-control, xacro }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-moveit-config";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_moveit_config/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "7aa0a3c78221673312bf67d1abea740edeaf9b81f1f731f9e98f4ba200ee2d17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bcr-arm-description controller-manager joint-state-publisher joint-state-publisher-gui moveit-configs-utils moveit-kinematics moveit-planners moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant moveit-simple-controller-manager robot-state-publisher rviz-common rviz-default-plugins rviz2 tf2-ros topic-based-ros2-control xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "moveit configuration and launch files for motion planning with the bcr arm";
    license = with lib.licenses; [ asl20 ];
  };
}
