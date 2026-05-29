
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-pytest, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rcl-interfaces, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-diagnostic-aggregator";
  version = "4.4.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/lyrical/diagnostic_aggregator/4.4.7-1.tar.gz";
    name = "4.4.7-1.tar.gz";
    sha256 = "576d3bb0cfc71f02b1622e93940d732628dc4a56955be731a85a3e8ebff42ea0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python diagnostic-msgs pluginlib rcl-interfaces rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-pytest launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Aggregates diagnostic information from multiple sources.";
    license = with lib.licenses; [ bsd3 ];
  };
}
