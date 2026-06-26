
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rcl-interfaces, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-medkit-log-bridge";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/humble/ros2_medkit_log_bridge/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "c7b1763a88bcfec80ce15d5d452ba979feabac22e6c89bd248acbb5db794497b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ rcl-interfaces rclcpp ros2-medkit-fault-reporter ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Bridge node promoting ROS2 /rosout log entries to FaultManager faults";
    license = with lib.licenses; [ asl20 ];
  };
}
