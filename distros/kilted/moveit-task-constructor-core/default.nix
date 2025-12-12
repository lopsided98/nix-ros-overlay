
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, fmt, geometry-msgs, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-planners, moveit-resources-fanuc-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-task-constructor-msgs, py-binding-tools, rclcpp, rviz-marker-tools, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-core";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_core/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "971f76ab97b98a8443b3f82939dfac183c72f96c7ca2a294fcd2fb19befc8bae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest launch-testing-ament-cmake moveit-configs-utils moveit-planners moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ fmt geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface moveit-task-constructor-msgs py-binding-tools rclcpp rviz-marker-tools tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "MoveIt Task Pipeline";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
