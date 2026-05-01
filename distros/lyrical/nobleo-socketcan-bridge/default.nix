
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, can-msgs, diagnostic-msgs, diagnostic-updater, fmt, linuxHeaders, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-nobleo-socketcan-bridge";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nobleo_socketcan_bridge-release/archive/release/lyrical/nobleo_socketcan_bridge/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "3fb709fa6d4e0ae3f679c406ca37b58bcbceb626b13e1025d0059529a35d7052";
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
