
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-jazzy-io-context";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/jazzy/io_context/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "d9c95ba500d63f5c7641cfb0d867fdaf81ef83c325e600df63eeac7350a0c594";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = "A library to write Synchronous and Asynchronous networking applications";
    license = with lib.licenses; [ asl20 ];
  };
}
