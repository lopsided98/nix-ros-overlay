
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-fault-manager, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-reporter";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_reporter/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "a19e703d42f86a9153a86b4e49e25ab8ca6ed27a0c5fbb611263c6f9cec4eeaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ rclcpp ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Client library for easy fault reporting with local filtering";
    license = with lib.licenses; [ asl20 ];
  };
}
