
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, fmt, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, libyaml-vendor, moveit-core, moveit-ros-visualization, moveit-task-constructor-core, moveit-task-constructor-msgs, qt5, rclcpp, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-moveit-task-constructor-visualization";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/moveit_task_constructor_visualization/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "09d51ffe10e5a63dcae045475a9402cc8e2daba92654ca5b18e3393d71abc87b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest launch launch-testing launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ fmt libyaml-vendor moveit-core moveit-ros-visualization moveit-task-constructor-core moveit-task-constructor-msgs rclcpp rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Visualization tools for MoveIt Task Pipeline";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
