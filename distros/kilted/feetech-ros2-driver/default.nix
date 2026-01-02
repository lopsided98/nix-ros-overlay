
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libserial-dev, ament-cmake, fmt, hardware-interface, pkg-config, pluginlib, range-v3, rclcpp, spdlog, tl-expected }:
buildRosPackage {
  pname = "ros-kilted-feetech-ros2-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/feetech_ros2_driver-release/archive/release/kilted/feetech_ros2_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "1cdd488186c1accd1bfe282bdb7cb3122f85ebfe757833dc3c3d0c7f7bbbfb3a";
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
