
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-serial-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/rolling/serial_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "26f271d4bdc63790e8391a69818605fd1a1ac52d863fa715fcea0221f13228e2";
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
