
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, moveit-simple-controller-manager, python3, rclcpp, rclcpp-action, rclpy, ros-testing, rviz2, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-planning-interface";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_ros_planning_interface/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "8604826a8c04c2b133431aeb1206c183e0abef1b1d7c58c24c4f5d68fea1d19b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto moveit-configs-utils moveit-planners-ompl moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-simple-controller-manager ros-testing rviz2 ];
  propagatedBuildInputs = [ geometry-msgs moveit-common moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Components of MoveIt that offer simpler interfaces to planning and execution";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
