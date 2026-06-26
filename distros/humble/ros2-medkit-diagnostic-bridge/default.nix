
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-diagnostic-bridge";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_diagnostic_bridge/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "5975be2dd7e22e102ac5c4ce0a6443f73d98b6d145233f197f844b884d45ad68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ diagnostic-msgs rclcpp ros2-medkit-fault-reporter ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Bridge node converting ROS2 /diagnostics to FaultManager faults";
    license = with lib.licenses; [ asl20 ];
  };
}
