
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-humble-serial-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/humble/serial_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "be898c4e7146a88141857f7372ee224524ce12b418f0f8214225670f76f214b1";
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
