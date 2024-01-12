
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, micro-ros-diagnostic-msgs, osrf-testing-tools-cpp, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-iron-micro-ros-diagnostic-bridge";
  version = "0.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/iron/micro_ros_diagnostic_bridge/0.3.0-5.tar.gz";
    name = "0.3.0-5.tar.gz";
    sha256 = "3de1673cfd3b37d64f6c5b51951abebcc70b98f36b4d151bdc65b3b9fbbcf28b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common diagnostic-msgs micro-ros-diagnostic-msgs osrf-testing-tools-cpp ros-environment ];
  propagatedBuildInputs = [ diagnostic-msgs micro-ros-diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Translates micro-ROS diagnostic messages to vanilla ROS 2 diagnostic messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
