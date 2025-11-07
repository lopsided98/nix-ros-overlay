
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, backward-ros, fmt, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-rolling-ros2-fmt-logger";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_fmt_logger-release/archive/release/rolling/ros2_fmt_logger/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "642f78cb033b975f874a09dcfce9d2662e8797ff76317862433e8b6764649f5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ backward-ros fmt rclcpp rcutils ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "A modern, ROS 2 logging library that provides fmt-style formatting as a replacement for RCLCPP logging macros";
    license = with lib.licenses; [ asl20 ];
  };
}
