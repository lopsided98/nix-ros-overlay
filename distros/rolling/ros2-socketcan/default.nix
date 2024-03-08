
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-socketcan";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/rolling/ros2_socketcan/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "364b77f0bab0be348f243dee9bbebbccf1e097de2645f953962ab78cc30e26ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simple wrapper around SocketCAN'';
    license = with lib.licenses; [ asl20 ];
  };
}
