
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libserial-dev, ament-cmake, fmt, hardware-interface, pkg-config, pluginlib, range-v3, rclcpp, spdlog, tl-expected }:
buildRosPackage {
  pname = "ros-jazzy-feetech-ros2-driver";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/feetech_ros2_driver-release/archive/release/jazzy/feetech_ros2_driver/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "198e6f224930ab061e74a26b9a14ae479a05e62c66223b0a14c3e7b6c47e5438";
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
