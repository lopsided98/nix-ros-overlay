
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, fmt, geometry-msgs, launch-testing-ament-cmake, moveit-configs-utils, moveit-core, moveit-planners-ompl, moveit-py, moveit-resources-fanuc-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-task-constructor-msgs, py-binding-tools, rclcpp, rviz-marker-tools, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-task-constructor-core";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/moveit_task_constructor_core/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e61208c335130d81901fd83ddbbea824b7169d0d4dc69592a1e3ca13b5413d08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest launch-testing-ament-cmake moveit-configs-utils moveit-planners-ompl moveit-resources-fanuc-moveit-config ];
  propagatedBuildInputs = [ fmt geometry-msgs moveit-core moveit-py moveit-ros-planning moveit-ros-planning-interface moveit-task-constructor-msgs py-binding-tools rclcpp rviz-marker-tools tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "MoveIt Task Pipeline";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
