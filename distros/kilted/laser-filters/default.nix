
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, angles, filters, laser-geometry, launch-testing-ament-cmake, message-filters, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, tf2, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-laser-filters";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_filters-release/archive/release/kilted/laser_filters/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "1d6db497b2b270e959f712322dd9e5de663388c85aa2111f1c30f88b51a48a52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest launch-testing-ament-cmake ];
  propagatedBuildInputs = [ angles filters laser-geometry message-filters pluginlib rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs tf2 tf2-geometry-msgs tf2-kdl tf2-ros ];

  meta = {
    description = "Assorted filters designed to operate on 2D planar laser scanners,
    which use the sensor_msgs/LaserScan type.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
