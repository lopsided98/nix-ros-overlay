
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rcl-interfaces, rclcpp, rclcpp-lifecycle, rclpy, ros2-medkit-cmake, ros2-medkit-fault-detection, ros2-medkit-fault-manager, ros2-medkit-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-reporter";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_reporter/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "d8a04537b410a82228d4915433311ba11ccb51c63eaca8b26e471704ae4bbbe3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros rcl-interfaces rclpy ros2-medkit-fault-manager std-msgs ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle ros2-medkit-fault-detection ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Client library for easy fault reporting with local filtering";
    license = with lib.licenses; [ asl20 ];
  };
}
