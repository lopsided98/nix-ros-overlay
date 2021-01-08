
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-plansys2-domain-expert";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_domain_expert/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "13a32a74ccd01ffd565782a368ab118ef3585335301532175bae5e3095d30b9f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the Domain Expert module for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
