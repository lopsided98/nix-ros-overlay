
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-pytest, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rcl-interfaces, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-diagnostic-aggregator";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostic_aggregator/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "e4b96477bb5f768c5bb8bd77623fedb24727a18b21667d5983d8f2cfd288fa54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python diagnostic-msgs pluginlib rcl-interfaces rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-pytest launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_aggregator";
    license = with lib.licenses; [ bsd3 ];
  };
}
