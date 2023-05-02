
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, message-filters, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-laser-filters";
  version = "2.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/rolling/laser_filters/2.0.6-3.tar.gz";
    name = "2.0.6-3.tar.gz";
    sha256 = "1e49d5fee03a08e758f2a53ee06dfec245115b5f100dcb1ae6822cd389e8aded";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ angles filters laser-geometry message-filters pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2 tf2-ros ];

  meta = {
    description = ''Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
