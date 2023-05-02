
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, pluginlib, rclcpp, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-diagnostic-aggregator";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/foxy/diagnostic_aggregator/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "9d385c71d9f3ce0828619cfa155ab0b334eb7d407d01555677f86191f1c241f8";
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
