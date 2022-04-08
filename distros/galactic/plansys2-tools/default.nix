
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-problem-expert, qt-gui-cpp, rclcpp, rclcpp-lifecycle, rqt-gui, rqt-gui-cpp }:
buildRosPackage {
  pname = "ros-galactic-plansys2-tools";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_tools/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "91c4b2e84bb8d13c0329f25f9d22f668011488cb55726de0c7c782a08abd3fa7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-problem-expert qt-gui-cpp rclcpp rclcpp-lifecycle rqt-gui rqt-gui-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of tools for monitoring ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
