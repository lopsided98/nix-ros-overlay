
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, fmt, launch-testing, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-task-constructor-capabilities";
  version = "0.1.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/moveit_task_constructor_capabilities/0.1.5-3.tar.gz";
    name = "0.1.5-3.tar.gz";
    sha256 = "560597847bcc88464c1dc134370aee5d3a191965138b507934deeeb9773ac27e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest controller-manager launch-testing launch-testing-ament-cmake moveit-configs-utils moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt moveit-core moveit-ros-move-group moveit-ros-planning moveit-task-constructor-core moveit-task-constructor-msgs pluginlib rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveGroupCapabilites to interact with MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
