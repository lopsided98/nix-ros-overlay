
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, eigen, eigen3-cmake-module, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-laser-geometry";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/foxy/laser_geometry/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "dbf17d584a0d8acc164779911a245c48e7157387b0c2f6f12a90f0512a3e0ecb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ament-cmake eigen eigen3-cmake-module rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
