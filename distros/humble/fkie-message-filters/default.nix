
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-fkie-message-filters";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/humble/fkie_message_filters/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "1695320d44d10ba245f348ece974bc7c25ea9965e4efd9704d8e4c759aee702d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros std-msgs ];
  propagatedBuildInputs = [ image-transport rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Improved ROS message filters";
    license = with lib.licenses; [ asl20 ];
  };
}
