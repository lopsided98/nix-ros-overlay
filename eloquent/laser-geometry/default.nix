
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-lint-cmake, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, eigen3-cmake-module, eigen, tf2, ament-cmake-gmock, ament-cmake-cppcheck, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-laser-geometry";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/eloquent/laser_geometry/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "97c700bd336b2b196b478451c6d6b7222a3f77d4b614bc7e3596200bfa9b70e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs eigen rclcpp tf2 ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs ament-cmake eigen3-cmake-module eigen tf2 rclcpp ];
  nativeBuildInputs = [ eigen3-cmake-module ament-cmake ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
