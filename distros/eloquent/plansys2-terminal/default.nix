
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-domain-expert, plansys2-executor, plansys2-msgs, plansys2-planner, plansys2-problem-expert, rclcpp, rclcpp-action, rclcpp-lifecycle, readline }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-terminal";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_terminal/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "d4ffabf66cabf56c2bc7f92c5f782cbd25821b8721f58f9f2c2e64126cf441f9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-domain-expert plansys2-executor plansys2-msgs plansys2-planner plansys2-problem-expert rclcpp rclcpp-action rclcpp-lifecycle readline ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A terminal tool for monitor and manage the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
