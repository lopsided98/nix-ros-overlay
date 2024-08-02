
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-pytest, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rcl-interfaces, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-diagnostic-aggregator";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/jazzy/diagnostic_aggregator/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "19fafb3899193842a688898c71f1a79c57bed1d7dfafa38fe24125759f19d346";
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
