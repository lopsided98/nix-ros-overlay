
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, micro-ros-diagnostic-msgs, osrf-testing-tools-cpp, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-micro-ros-diagnostic-bridge";
  version = "0.3.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/jazzy/micro_ros_diagnostic_bridge/0.3.0-6.tar.gz";
    name = "0.3.0-6.tar.gz";
    sha256 = "e934ee8396814f98ebce80ac38c71e5e346b7c83be0dfe50e69bb5bb5cd0c449";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common diagnostic-msgs micro-ros-diagnostic-msgs osrf-testing-tools-cpp ros-environment ];
  propagatedBuildInputs = [ diagnostic-msgs micro-ros-diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Translates micro-ROS diagnostic messages to vanilla ROS 2 diagnostic messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
