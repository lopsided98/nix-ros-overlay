
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, can-msgs, diagnostic-msgs, diagnostic-updater, fmt, linuxHeaders, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-nobleo-socketcan-bridge";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nobleo_socketcan_bridge-release/archive/release/rolling/nobleo_socketcan_bridge/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "c10bb2503ebd82aae131df64c1cda1d55d669788cbda417ef44c18127065fcf3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ can-msgs diagnostic-msgs diagnostic-updater fmt linuxHeaders rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simple wrapper around SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
