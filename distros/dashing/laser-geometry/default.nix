
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, eigen, rclcpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-dashing-laser-geometry";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/dashing/laser_geometry/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "ba1d6b0b5d28f564ceb71c1e0f76a4f0eb6583743fe66389583fe810ae418077";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ament-cmake eigen rclcpp sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
