
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rclcpp-lifecycle, ament-lint-common, rclpy, ament-cmake-gtest, std-msgs, rclcpp, ament-cmake-python, diagnostic-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-diagnostic-updater";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/diagnostics-release/archive/release/dashing/diagnostic_updater/2.0.0-1.tar.gz;
    sha256 = "c7aff286cd2e8f2a53bc55f8c78cfbd1a8521f911a67af877f46ed3358394c49";
  };

  buildType = "ament_cmake";
  buildInputs = [ diagnostic-msgs std-msgs rclpy rclcpp ];
  checkInputs = [ ament-cmake-pytest rclcpp-lifecycle ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs diagnostic-msgs rclpy rclcpp ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''diagnostic_updater contains tools for easily updating diagnostics. it is commonly used in device drivers to keep track of the status of output topics, device status, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
