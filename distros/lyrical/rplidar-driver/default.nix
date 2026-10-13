
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, geometry-msgs, launch-ros, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rplidar-driver";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_driver-release/archive/release/lyrical/rplidar_driver/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "aa3d6b9032b3f29d639aa8a4aefe0bee3bce310f5c22bb4f1b5b97925bc2207d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto tf2-geometry-msgs ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs launch-ros lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A modern, lifecycle-managed ROS2 driver for Slamtec RPLidar.
    Features multithreaded scanning, non-blocking I/O, and C++17 architecture.";
    license = with lib.licenses; [ bsd2 ];
  };
}
