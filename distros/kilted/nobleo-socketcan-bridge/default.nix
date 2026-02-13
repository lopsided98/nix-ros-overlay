
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, can-msgs, diagnostic-msgs, diagnostic-updater, fmt, linuxHeaders, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-nobleo-socketcan-bridge";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nobleo_socketcan_bridge-release/archive/release/kilted/nobleo_socketcan_bridge/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "bab2add979bcc3ecea48e4799525440cb74fe2b167c4060c21cf10feffd6c058";
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
