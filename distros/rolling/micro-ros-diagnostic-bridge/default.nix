
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, micro-ros-diagnostic-msgs, osrf-testing-tools-cpp, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-micro-ros-diagnostic-bridge";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/rolling/micro_ros_diagnostic_bridge/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "1e0093a6aa52761d451a4aad5781ac0ffcbdd502e6121f591075b290cf005d6a";
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
