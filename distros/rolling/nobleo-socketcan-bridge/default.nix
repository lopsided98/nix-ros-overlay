
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, can-msgs, diagnostic-msgs, diagnostic-updater, fmt, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-nobleo-socketcan-bridge";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nobleo_socketcan_bridge-release/archive/release/rolling/nobleo_socketcan_bridge/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "23cb34ac8a9eb617d6a86164bc3bce196bcdd1661e784b301fc0af4d60551f17";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ can-msgs diagnostic-msgs diagnostic-updater fmt rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simple wrapper around SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
