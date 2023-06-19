
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, message-filters, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-laser-filters";
  version = "2.0.6-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/iron/laser_filters/2.0.6-4.tar.gz";
    name = "2.0.6-4.tar.gz";
    sha256 = "e6039bb00dcbe4ffb40095b455ec18f64a9b3ac37d1189415ecafac2acf159a5";
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
