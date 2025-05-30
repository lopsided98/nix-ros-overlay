
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-fkie-message-filters";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/rolling/fkie_message_filters/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "f4cd8855f418dabdc21bb43ede83d9ef0a7f0537ddb787063efe8945b8b50e66";
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
