
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fkie-message-filters";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/jazzy/fkie_message_filters/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "cc5eba46e4b04c2c6f95d8f684862ee02a432f2ac28efd941ab48abf77445c86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros rclcpp-lifecycle std-msgs ];
  propagatedBuildInputs = [ image-transport rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Improved ROS message filters";
    license = with lib.licenses; [ asl20 ];
  };
}
