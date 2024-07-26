
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch, launch-testing, launch-testing-ros, pythonPackages, rclcpp, rclcpp-lifecycle, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-iron-diagnostic-updater";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/diagnostic_updater/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "686fe1d55b80f92ac2f4fae5ee8fac8962dd6f928636756e08477770080b2c06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ros pythonPackages.pytest rclcpp-lifecycle ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.";
    license = with lib.licenses; [ bsd3 ];
  };
}
