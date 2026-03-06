
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, backward-ros, fmt, rclcpp, rcutils }:
buildRosPackage {
  pname = "ros-humble-ros2-fmt-logger";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_fmt_logger-release/archive/release/humble/ros2_fmt_logger/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4f96e3378448d510ae52888e36e285c5c1764e03ff5e7d91a9396b2a54831815";
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
