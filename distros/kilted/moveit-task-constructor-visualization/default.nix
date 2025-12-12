
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, fmt, launch, launch-testing, launch-testing-ament-cmake, launch-testing-ros, libyaml-vendor, moveit-core, moveit-ros-visualization, moveit-task-constructor-core, moveit-task-constructor-msgs, qt5, rclcpp, rviz2 }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-visualization";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_visualization/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "08fa1ba813399ad320cc429065fe5391139df5c600bfb86ce959d8daafa3ef2f";
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
