
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, fmt, geometry-msgs, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-planners, moveit-py, moveit-resources-fanuc-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-task-constructor-msgs, py-binding-tools, rclcpp, rviz-marker-tools, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-task-constructor-core";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/moveit_task_constructor_core/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "82a96e45a1348fcb3ca29cafe2d956ad688889e36607fe59d0015d42f1e92779";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest launch-testing-ament-cmake moveit-configs-utils moveit-planners moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ fmt geometry-msgs moveit-core moveit-py moveit-ros-planning moveit-ros-planning-interface moveit-task-constructor-msgs py-binding-tools rclcpp rviz-marker-tools tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "MoveIt Task Pipeline";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
