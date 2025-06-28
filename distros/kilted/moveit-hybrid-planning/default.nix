
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, controller-manager, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-simple-controller-manager, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, robot-state-publisher, ros-testing, rviz2, std-msgs, std-srvs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-moveit-hybrid-planning";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_hybrid_planning/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "5cc79812a6eb2da3c590c2fca3991d87c9fe93495ba7a7d8c19b08eaef269819";
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
