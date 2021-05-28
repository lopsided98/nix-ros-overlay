
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-galactic-ros2-socketcan";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/galactic/ros2_socketcan/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e2e2d2660aade3568096dbe1b02545a8a8bd468aec6a11ae9ecb52ca0e80a49b";
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
