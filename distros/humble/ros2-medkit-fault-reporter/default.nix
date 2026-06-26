
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-fault-reporter";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_fault_reporter/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b2dab469d1327e34a445ae5658d97818bb3e73e9a3eaa0089aab43d44229a87f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ rclcpp ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Client library for easy fault reporting with local filtering";
    license = with lib.licenses; [ asl20 ];
  };
}
