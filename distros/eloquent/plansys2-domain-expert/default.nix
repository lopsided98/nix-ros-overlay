
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-action, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-domain-expert";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_domain_expert/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "919baa58cf82a0acfece32380ad8c00ad971a8b763e1cf0716e37dca10872b24";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-action rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Domain Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
