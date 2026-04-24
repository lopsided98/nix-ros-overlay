
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-clang-tidy, ament-cmake, ament-cmake-copyright, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, gmock-vendor, gtest, rcl, rcl-action, rclcpp, rclcpp-action, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-rtest";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtest-release/archive/release/rolling/rtest/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "40176732f344616853ca1a85d698522a63f67d63754c35166d46ce36d127cca7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros boost gtest ros-environment ];
  checkInputs = [ ament-clang-tidy ament-cmake-copyright ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs gmock-vendor rcl rcl-action rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "This framework enables writing reliable, fully repeatable tests for C++ ROS 2 implementations.";
    license = with lib.licenses; [ asl20 ];
  };
}
