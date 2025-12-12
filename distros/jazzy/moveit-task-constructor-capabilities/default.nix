
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fmt, launch-testing, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-task-constructor-core, moveit-task-constructor-msgs, pluginlib, rclcpp-action, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-moveit-task-constructor-capabilities";
  version = "0.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/jazzy/moveit_task_constructor_capabilities/0.1.4-3.tar.gz";
    name = "0.1.4-3.tar.gz";
    sha256 = "2986981f7789c10f892bb837611c4f641165fc00e85f26bd9f89bae2d450f5b3";
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
