
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-clang-tidy, ament-cmake, ament-cmake-copyright, ament-cmake-gmock, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, example-interfaces, gtest, rcl, rcl-action, rclcpp, rclcpp-action, ros-environment, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-rtest";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtest-release/archive/release/lyrical/rtest/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "4897bd14dbe10bf907af65af892e7c16f8443e4f51fb148c1bab7d7fca16429b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros boost gtest ros-environment ];
  checkInputs = [ ament-clang-tidy ament-cmake-copyright ament-cmake-gmock ament-lint-auto ament-lint-common example-interfaces std-msgs std-srvs ];
  propagatedBuildInputs = [ action-msgs rcl rcl-action rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "This framework enables writing reliable, fully repeatable tests for C++ ROS 2 implementations.";
    license = with lib.licenses; [ asl20 ];
  };
}
