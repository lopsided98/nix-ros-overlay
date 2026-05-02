
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, diagnostic-msgs, diagnostic-updater, filters, laser-geometry, launch-testing-ament-cmake, message-filters, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-laser-filters";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/rolling/laser_filters/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "6a6718bfb91b275a4acf1f3ee16689ba984db6b5e2d3e9b383de893f9f0ddb96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest launch-testing-ament-cmake ];
  propagatedBuildInputs = [ angles diagnostic-msgs diagnostic-updater filters laser-geometry message-filters pluginlib rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-kdl tf2-ros ];

  meta = {
    description = "Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
