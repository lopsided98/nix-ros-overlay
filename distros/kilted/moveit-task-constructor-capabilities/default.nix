
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, controller-manager, fmt, launch-testing, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-capabilities";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_capabilities/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "4992c35838de1cf302e5d37ea0aab4c524514303cb2eae3e876dcf5ce8d18dcf";
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
