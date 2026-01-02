
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libserial-dev, ament-cmake, fmt, hardware-interface, pkg-config, pluginlib, range-v3, rclcpp, spdlog, tl-expected }:
buildRosPackage {
  pname = "ros-rolling-feetech-ros2-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/feetech_ros2_driver-release/archive/release/rolling/feetech_ros2_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "9f0ee9f39bdf509f50ac9e63b6e7fac3addb34ddebb07b5a7380589b54e61ce7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_libserial-dev fmt hardware-interface pkg-config pluginlib range-v3 rclcpp spdlog tl-expected ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware interface for Feetech Servos";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
