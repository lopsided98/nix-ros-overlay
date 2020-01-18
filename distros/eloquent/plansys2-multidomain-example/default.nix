
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-executor, plansys2-msgs, rclcpp, rclcpp-action }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-multidomain-example";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_multidomain_example/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "9ba51c1e68a85ec42fe4cb16ad9548700aaf5b45dcd52eb14f5c61bd269462c2";
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
