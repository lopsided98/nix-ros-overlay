
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, moveit-simple-controller-manager, python3, rclcpp, rclcpp-action, rclpy, ros-testing, rviz2, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-moveit-ros-planning-interface";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_ros_planning_interface/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "b2ed4a69766443139174b9d85cbd0a69abfad09e0e167c2928c5f85c1a3b9131";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto moveit-configs-utils moveit-planners-ompl moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-simple-controller-manager ros-testing rviz2 ];
  propagatedBuildInputs = [ geometry-msgs moveit-common moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt that offer simpler remote (as from another ROS 2 node) interfaces to planning and execution'';
    license = with lib.licenses; [ bsd3 ];
  };
}
