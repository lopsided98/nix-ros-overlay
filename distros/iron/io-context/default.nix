
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, rclcpp, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-iron-io-context";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/iron/io_context/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "2b4452a2b59c904702bb03936dbfe1f81868ed6888d95e424a30a6e7f6ceed18";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio rclcpp std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A library to write Synchronous and Asynchronous networking applications'';
    license = with lib.licenses; [ asl20 ];
  };
}
