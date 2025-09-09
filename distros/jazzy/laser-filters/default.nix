
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, diagnostic-msgs, diagnostic-updater, filters, laser-geometry, launch-testing-ament-cmake, message-filters, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-laser-filters";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/jazzy/laser_filters/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "a99dfe73fbbf60063833da89700a3bba5a4220efaa3fbd429cfbe6eacd4a177f";
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
