
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-clang-tidy, ament-cmake, ament-cmake-copyright, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, gtest, rcl, rcl-action, rclcpp, rclcpp-action, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-rtest";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtest-release/archive/release/lyrical/rtest/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "2873fd720120244054baa15ec1bb2296ec8a2a6e9326995f02e7711726233c3b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros boost gtest ros-environment ];
  checkInputs = [ ament-clang-tidy ament-cmake-copyright ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rcl rcl-action rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "This framework enables writing reliable, fully repeatable tests for C++ ROS 2 implementations.";
    license = with lib.licenses; [ asl20 ];
  };
}
