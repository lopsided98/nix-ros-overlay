
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-fault-reporter";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_fault_reporter/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ff292cc04e377eb0e9b62fc7e3863dce43beadd77d1e245e83ff99b414c40497";
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
