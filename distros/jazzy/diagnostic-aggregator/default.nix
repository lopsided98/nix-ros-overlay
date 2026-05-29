
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-pytest, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rcl-interfaces, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-aggregator";
  version = "4.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_aggregator/4.2.7-1.tar.gz";
    name = "4.2.7-1.tar.gz";
    sha256 = "cce029769f47ae83d8499398ba0a9fb3f8c29f8467e4b266dc53def766d68a52";
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
