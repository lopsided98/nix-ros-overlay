
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, fmt, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, libyaml-vendor, moveit-core, moveit-ros-visualization, moveit-task-constructor-core, moveit-task-constructor-msgs, qt5, rclcpp, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-moveit-task-constructor-visualization";
  version = "0.1.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/moveit_task_constructor_visualization/0.1.5-3.tar.gz";
    name = "0.1.5-3.tar.gz";
    sha256 = "586c027b9771a1cf9032637fe54f307e22beed29cc3382aa1935aabe157e2eeb";
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
