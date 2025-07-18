
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-lint-cmake, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, can-msgs, diagnostic-msgs, diagnostic-updater, fmt, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-nobleo-socketcan-bridge";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nobleo_socketcan_bridge-release/archive/release/kilted/nobleo_socketcan_bridge/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "29c9bc4d6c85fe3d8c77100a4d400b9eb9a1518c552f8b47adcbc272ae07fc20";
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
