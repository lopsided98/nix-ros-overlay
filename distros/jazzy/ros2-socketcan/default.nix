
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, can-msgs, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, ros2-socketcan-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-socketcan";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_socketcan-release/archive/release/jazzy/ros2_socketcan/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "d006e04cd340a48c36bae69baad2d8998e12db09f4321ff7beafa5dc585e9a2f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle ros2-socketcan-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simple wrapper around SocketCAN";
    license = with lib.licenses; [ asl20 ];
  };
}
