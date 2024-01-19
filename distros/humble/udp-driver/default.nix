
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, asio-cmake-module, io-context, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, udp-msgs }:
buildRosPackage {
  pname = "ros-humble-udp-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/transport_drivers-release/archive/release/humble/udp_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "26c1f3eb0952857d22041f36426c511aacbbe9eec297b1bb7959ab5ec2df57b7";
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
