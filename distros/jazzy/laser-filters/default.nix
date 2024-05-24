
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, message-filters, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-laser-filters";
  version = "2.0.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/jazzy/laser_filters/2.0.7-3.tar.gz";
    name = "2.0.7-3.tar.gz";
    sha256 = "95c5654a17239d40a9754ea47782ebb554f68eb72139593456d6e5b80992e747";
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
