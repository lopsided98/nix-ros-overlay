
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-socketcan";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/rolling/ros2_socketcan/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "33dc1ca10acce3e9b03413c1e2f059e1bc7d4ea998ddea13199830f1b9283c9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simple wrapper around SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
