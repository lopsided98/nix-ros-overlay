
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, launch-testing, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-capabilities";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_capabilities/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "a6cbf3b694a1a983fadfb1da3a1345bbfde6a165d9654810260f2e06a6037de5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest launch-testing launch-testing-ament-cmake moveit-configs-utils moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ fmt moveit-core moveit-ros-move-group moveit-ros-planning moveit-task-constructor-core moveit-task-constructor-msgs pluginlib rclcpp-action std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveGroupCapabilites to interact with MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
