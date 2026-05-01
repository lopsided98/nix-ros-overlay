
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, backward-ros, fmt, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-lyrical-ros2-fmt-logger";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_fmt_logger-release/archive/release/lyrical/ros2_fmt_logger/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "6d350750a19ecab46cd3668d0873985ffd104bef3f7a405771ead402b6099e43";
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
