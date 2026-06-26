
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, rclcpp, ros2-medkit-cmake, ros2-medkit-fault-manager, ros2-medkit-fault-reporter, ros2-medkit-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-action-status-bridge";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_action_status_bridge/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "e84f349eb5ad0231c9a19abcdb626203c2412bf7729960c2a02a4c500f24644f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros ros2-medkit-fault-manager ];
  propagatedBuildInputs = [ action-msgs rclcpp ros2-medkit-fault-reporter ros2-medkit-msgs ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Bridge node turning terminal ROS2 action goal states (aborted) into FaultManager faults";
    license = with lib.licenses; [ asl20 ];
  };
}
