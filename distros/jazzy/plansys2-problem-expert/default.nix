
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, lifecycle-msgs, plansys2-domain-expert, plansys2-msgs, plansys2-pddl-parser, qt5, rclcpp, rclcpp-action, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-problem-expert";
  version = "2.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_problem_expert/2.0.14-1.tar.gz";
    name = "2.0.14-1.tar.gz";
    sha256 = "bbb518c3ef40ee7ec34e55609d38e34441d258cb89add9ee2a6be698a844975c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp lifecycle-msgs plansys2-domain-expert plansys2-msgs plansys2-pddl-parser qt5.qtbase rclcpp rclcpp-action rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the Problem Expert module for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
