
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, pluginlib, position-controllers, rclcpp, rclcpp-action, rclcpp-components, robot-state-publisher, ros-testing, rviz2, std-msgs, std-srvs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-moveit-hybrid-planning";
  version = "2.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_hybrid_planning/2.9.0-2.tar.gz";
    name = "2.9.0-2.tar.gz";
    sha256 = "70fc41f918a34f49131649564b30a1679a4102875d67bedc90b74fc8deedcf0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-planners-ompl ros-testing ];
  propagatedBuildInputs = [ ament-index-cpp controller-manager moveit-common moveit-core moveit-msgs moveit-resources-panda-moveit-config moveit-ros-planning moveit-ros-planning-interface pluginlib position-controllers rclcpp rclcpp-action rclcpp-components robot-state-publisher rviz2 std-msgs std-srvs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Hybrid planning components of MoveIt 2'';
    license = with lib.licenses; [ bsd3 ];
  };
}
