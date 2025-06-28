
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcpputils, rcutils, test-msgs }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-test-common";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/rosbag2_test_common/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "5995d254f5ce9e6ed0d041b9e95c1952d843d850775d967ecd0b083f84b33591";
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
