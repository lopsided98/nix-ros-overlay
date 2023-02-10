
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-diagnostic-aggregator";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostic_aggregator/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "037ce1fb3f7f2a6dd2e0d0a5bba456f9ae09e5252cbeac319b114159580ef8d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python diagnostic-msgs pluginlib rclcpp std-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ];
  propagatedBuildInputs = [ rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsd3 ];
  };
}
