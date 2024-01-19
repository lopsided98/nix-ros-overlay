
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-plansys2-core";
  version = "2.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_core/2.0.11-1.tar.gz";
    name = "2.0.11-1.tar.gz";
    sha256 = "0dd3e30bd84b5b69725040acf5515d8380cd2423e89a59bf5c524e322798fefe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based core  for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
