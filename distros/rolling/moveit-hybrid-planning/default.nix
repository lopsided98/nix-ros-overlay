
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, controller-manager, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-simple-controller-manager, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, robot-state-publisher, ros-testing, rviz2, std-msgs, std-srvs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-hybrid-planning";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_hybrid_planning/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "7b93840c9c5c3f16d7f88b531eba47fe3aa1e9f3802c6f7370f6299afcf7392e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest controller-manager moveit-configs-utils moveit-planners-ompl moveit-resources-panda-moveit-config moveit-simple-controller-manager position-controllers robot-state-publisher ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager moveit-common moveit-core moveit-msgs moveit-resources-panda-moveit-config moveit-ros-planning moveit-ros-planning-interface pluginlib position-controllers rclcpp rclcpp-action rclcpp-components robot-state-publisher rviz2 std-msgs std-srvs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hybrid planning components of MoveIt 2";
    license = with lib.licenses; [ bsd3 ];
  };
}
