
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-uncrustify, eigen, eigen3-cmake-module, python-cmake-module, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, tf2 }:
buildRosPackage {
  pname = "ros-rolling-laser-geometry";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/rolling/laser_geometry/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "69e5f816e8adeca82432709adae8222acb91a88f456f676e2629f09ac1290143";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-pytest ament-cmake-uncrustify python-cmake-module ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module python3Packages.numpy rclcpp rclpy sensor-msgs sensor-msgs-py tf2 ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
