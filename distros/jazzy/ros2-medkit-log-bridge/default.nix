
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rcl-interfaces, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-log-bridge";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_log_bridge/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "30fd32b4a65f548c4ced1fc53ec1b05252b038e8062ed23958a66e5c179147e7";
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
