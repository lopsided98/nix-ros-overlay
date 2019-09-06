
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, sensor-msgs, ament-cmake-gtest, ament-cmake-cppcheck, tf2, rclcpp, ament-cmake-lint-cmake, ament-cmake-cpplint, eigen }:
buildRosPackage {
  pname = "ros-dashing-laser-geometry";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/dashing/laser_geometry/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "ba1d6b0b5d28f564ceb71c1e0f76a4f0eb6583743fe66389583fe810ae418077";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2 sensor-msgs rclcpp eigen ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-cpplint ];
  propagatedBuildInputs = [ ament-cmake sensor-msgs tf2 rclcpp eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
