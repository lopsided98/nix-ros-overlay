
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, message-filters, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-laser-filters";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/humble/laser_filters/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "8e7f0cc631cc9fa356b7d993fd98ae3ad7fc3e7d35c84633a4c5e7cae3c82050";
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
