
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-iron-serial-driver";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/iron/serial_driver/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "225cd7bb3a1d4af6356ed6d5a254f65a83a05755101cae1d8b6ca35d8c39fa4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio io-context rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A template class and associated utilities which encapsulate basic reading from serial ports'';
    license = with lib.licenses; [ asl20 ];
  };
}
