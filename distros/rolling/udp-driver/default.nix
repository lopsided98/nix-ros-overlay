
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-rolling-udp-driver";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/rolling/udp_driver/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b7018168c2b9e6696d90c05872bc4d3abcfcb47b79161a1bda9927d13a8efe7b";
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
