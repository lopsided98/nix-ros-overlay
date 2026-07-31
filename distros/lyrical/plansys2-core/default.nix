
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-core";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_core/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "81dc42ed7dfe21cb2ed81f215f522d9f93d7e10d5f97261f1b5f8f4b43b749bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the PDDL-based core  for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
