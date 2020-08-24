
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, lifecycle-msgs, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-lifecycle-manager";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_lifecycle_manager/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "2ed77e86ee5f515f18b2424608d40bed5709ced9cff8eab8f353cb39b00892a3";
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
