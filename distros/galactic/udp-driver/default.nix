
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-galactic-udp-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/galactic/udp_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c0832f450e2aebabfce86df050e1b5453f3008a511d7d6ad6411f4c47e811fca";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio io-context lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs udp-msgs ];
  nativeBuildInputs = [ ament-cmake-auto asio-cmake-module ];

  meta = {
    description = ''A library to write Synchronous and Asynchronous networking applications, ROS and ROS2 nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
