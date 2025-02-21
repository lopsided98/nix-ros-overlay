
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, moveit-simple-controller-manager, python3, rclcpp, rclcpp-action, rclpy, ros-testing, rviz2, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-planning-interface";
  version = "2.12.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_planning_interface/2.12.2-1.tar.gz";
    name = "2.12.2-1.tar.gz";
    sha256 = "bc6ca99446de8caefb9c9e3b50b877767a279ebdbd9a15b1f37dc61bf4b4bf65";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest moveit-configs-utils moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-simple-controller-manager ros-testing rviz2 ];
  propagatedBuildInputs = [ geometry-msgs moveit-common moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Components of MoveIt that offer simpler remote (as from another ROS 2 node) interfaces to planning and execution";
    license = with lib.licenses; [ bsd3 ];
  };
}
