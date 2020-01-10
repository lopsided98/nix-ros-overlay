
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-simple-example";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_simple_example/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "a030edc324c5a06874385cc407dbd99ddf0b3e60384a4f04722f60e7a92ea6c9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-executor plansys2-msgs rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A simple example of ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
