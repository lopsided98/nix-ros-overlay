
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bcr-arm-description, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-configs-utils, moveit-kinematics, moveit-planners, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, moveit-simple-controller-manager, robot-state-publisher, rviz-common, rviz-default-plugins, rviz2, tf2-ros, topic-based-ros2-control, xacro }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-moveit-config";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_moveit_config/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b7a90547cc8dbe49f42fdf68bfbc08683c5caf130dcc2523ba2f3a9d00c165bc";
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
