
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-lifecycle-manager";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_lifecycle_manager/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "c476594144516b5758f7e82545522e765a79690dbc8e567970367df42b9cb803";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A controller/manager for the lifecycle nodes of the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
