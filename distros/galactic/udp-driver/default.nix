
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-galactic-udp-driver";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/galactic/udp_driver/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a8db46b11f9368828d770dde8118732da8ce7c4363cb370eec2145c7cc56ab04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto asio-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio io-context lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A library to write Synchronous and Asynchronous networking applications, ROS and ROS2 nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
