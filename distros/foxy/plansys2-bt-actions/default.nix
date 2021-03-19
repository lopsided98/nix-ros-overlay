
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, cppzmq, geometry-msgs, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-plansys2-bt-actions";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_bt_actions/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "24a95ec8285f690b0d760c6a0c780075665110a9f254e6bf56b03fc749b23977";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs plansys2-msgs test-msgs ];
  propagatedBuildInputs = [ action-msgs behaviortree-cpp-v3 cppzmq plansys2-executor rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Problem Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
