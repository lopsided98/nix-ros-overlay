
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-ros2-socketcan";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/rolling/ros2_socketcan/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "b52cb6cf3a7df4e2a032fbe15977d202dd1f8397fde0228220e9121eef613157";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simple wrapper around SocketCAN'';
    license = with lib.licenses; [ asl20 ];
  };
}
