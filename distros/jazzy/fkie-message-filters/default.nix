
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, image-transport, rclcpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fkie-message-filters";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fkie_message_filters-release/archive/release/jazzy/fkie_message_filters/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c75d462b09996d577f0a364d0fcb7c342efd533367002d052b4629c8d7317dc3";
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
