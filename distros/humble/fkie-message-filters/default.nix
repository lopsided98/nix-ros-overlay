
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fkie-message-filters";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/humble/fkie_message_filters/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "6a51ea0791a2ad6b7fbf2461ba9876a730d6db881daf761799d52c52fee7e0f2";
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
