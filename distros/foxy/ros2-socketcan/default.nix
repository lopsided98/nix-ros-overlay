
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-foxy-ros2-socketcan";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autowarefoundation/ros2_socketcan-release/archive/release/foxy/ros2_socketcan/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "da4596e101c9cc6bb3096723c50152e3997d85c664df4380296ec1a78bade10f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simple wrapper around SocketCAN'';
    license = with lib.licenses; [ asl20 ];
  };
}
