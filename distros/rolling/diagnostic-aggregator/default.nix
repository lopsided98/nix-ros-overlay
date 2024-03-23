
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-diagnostic-aggregator";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostic_aggregator/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "cea9fa41ecc2c5342e2f02488236f58842997eb3a7720d5632fe26cddcb71cca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python diagnostic-msgs pluginlib rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_aggregator";
    license = with lib.licenses; [ bsd3 ];
  };
}
