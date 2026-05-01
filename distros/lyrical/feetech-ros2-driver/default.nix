
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libserial-dev, ament-cmake, fmt, hardware-interface, pkg-config, pluginlib, range-v3, rclcpp, spdlog, tl-expected }:
buildRosPackage {
  pname = "ros-lyrical-feetech-ros2-driver";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/feetech_ros2_driver-release/archive/release/lyrical/feetech_ros2_driver/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "8c58fd7fae14bacbc3469a5781de77b5abb74d79c84e33af32d0a5f960a6c592";
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
