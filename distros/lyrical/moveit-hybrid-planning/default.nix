
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, controller-manager, forward-command-controller, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-simple-controller-manager, pluginlib, rclcpp, rclcpp-action, rclcpp-components, robot-state-publisher, ros-testing, rviz2, std-msgs, std-srvs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-moveit-hybrid-planning";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_hybrid_planning/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "61a49c0524ce300928b6c56336aad6c1665f6a891abda946729728b3eacb9860";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest controller-manager forward-command-controller moveit-configs-utils moveit-planners-ompl moveit-resources-panda-moveit-config moveit-simple-controller-manager robot-state-publisher ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager forward-command-controller moveit-common moveit-core moveit-msgs moveit-resources-panda-moveit-config moveit-ros-planning moveit-ros-planning-interface pluginlib rclcpp rclcpp-action rclcpp-components robot-state-publisher rviz2 std-msgs std-srvs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hybrid planning components of MoveIt 2";
    license = with lib.licenses; [ bsd3 ];
  };
}
