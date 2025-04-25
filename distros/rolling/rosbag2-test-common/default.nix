
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcpputils, rcutils, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-test-common";
  version = "0.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_test_common/0.32.0-1.tar.gz";
    name = "0.32.0-1.tar.gz";
    sha256 = "e2f585312e5138de7a2ae8c63772f4d2ec25d312eba26e99386c115bfef5db35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcpputils rcutils test-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Commonly used test helper classes and fixtures for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
