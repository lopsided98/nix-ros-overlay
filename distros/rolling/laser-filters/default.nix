
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, message-filters, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-laser-filters";
  version = "2.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/rolling/laser_filters/2.0.7-2.tar.gz";
    name = "2.0.7-2.tar.gz";
    sha256 = "5d5bf4d749a734ab52834c02e98c60b01b79091d727be3e59cedb58105ce411b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ angles filters laser-geometry message-filters pluginlib rclcpp rclcpp-lifecycle sensor-msgs tf2 tf2-ros ];

  meta = {
    description = "Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
