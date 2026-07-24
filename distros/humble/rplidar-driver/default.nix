
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, diagnostic-updater, geometry-msgs, launch-ros, lifecycle-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-rplidar-driver";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_driver-release/archive/release/humble/rplidar_driver/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "1b256f9e7e61dfe51e723604eaa435229d48129b274530a826422703e1aea7f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto tf2-geometry-msgs ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs launch-ros lifecycle-msgs rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A modern, lifecycle-managed ROS2 driver for Slamtec RPLidar.
    Features multithreaded scanning, non-blocking I/O, and C++17 architecture.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
