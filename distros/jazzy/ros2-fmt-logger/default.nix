
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, backward-ros, fmt, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-jazzy-ros2-fmt-logger";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_fmt_logger-release/archive/release/jazzy/ros2_fmt_logger/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3338d3177bd4608fbae7d4fd0ffbc2d5b0bbd4e33850c03bf3866b62ece7c7cd";
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
