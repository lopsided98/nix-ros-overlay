
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-lyrical-io-context";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/lyrical/io_context/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "dcdb6dce819cbd56f5370d12d4d062372b47b0a1f4525c6ff0778819d25f7918";
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
