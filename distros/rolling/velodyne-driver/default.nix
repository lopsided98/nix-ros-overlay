
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-updater, libpcap, rclcpp, rclcpp-components, tf2-ros, velodyne-msgs }:
buildRosPackage {
  pname = "ros-rolling-velodyne-driver";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/velodyne-release/archive/release/rolling/velodyne_driver/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "5ae2e00f20a8296ba58135934d1c7c4283ee9417d5309218bb6417643d244387";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater libpcap rclcpp rclcpp-components tf2-ros velodyne-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "ROS device driver for Velodyne 3D LIDARs.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
