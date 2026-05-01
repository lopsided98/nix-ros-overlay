
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, micro-ros-diagnostic-msgs, osrf-testing-tools-cpp, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-micro-ros-diagnostic-bridge";
  version = "0.3.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/lyrical/micro_ros_diagnostic_bridge/0.3.0-7.tar.gz";
    name = "0.3.0-7.tar.gz";
    sha256 = "93c4a2ae4c70017b7c6bd2d16f7f249763020ab358ddf6461c353901c648c75b";
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
