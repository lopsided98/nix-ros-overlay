
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-socketcan";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/rolling/ros2_socketcan/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "bc0ba09a868c88391d97f1dc826edab4485915c8a9a96cc53a5fed2f7562b4bc";
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
