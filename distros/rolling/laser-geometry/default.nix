
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-geometry";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/rolling/laser_geometry/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "ac40ea4d32a34979f08704c19924d6d4dab66d99098424bdf640a8da18098314";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python tf2-geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module python3Packages.numpy rclcpp rclpy sensor-msgs sensor-msgs-py tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = "This package contains a class for converting from a 2D laser scan as defined by
    sensor_msgs/LaserScan into a point cloud as defined by sensor_msgs/PointCloud
    or sensor_msgs/PointCloud2. In particular, it contains functionality to account
    for the skew resulting from moving robots or tilting laser scanners.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
