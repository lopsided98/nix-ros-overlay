
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, eigen, eigen3-cmake-module, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-eloquent-laser-geometry";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/eloquent/laser_geometry/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "97c700bd336b2b196b478451c6d6b7222a3f77d4b614bc7e3596200bfa9b70e1";
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
