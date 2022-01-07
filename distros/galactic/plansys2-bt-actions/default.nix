
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, behaviortree-cpp-v3, cppzmq, geometry-msgs, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-bt-actions";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_bt_actions/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "064682f8cbe19b1d1465b8cd8eebb052143da0cff3393258ec30a20b132a3fd3";
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
