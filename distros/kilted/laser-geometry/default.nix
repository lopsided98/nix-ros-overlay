
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, python3Packages, rclcpp, rclpy, sensor-msgs, sensor-msgs-py, tf2 }:
buildRosPackage {
  pname = "ros-kilted-laser-geometry";
  version = "2.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_geometry-release/archive/release/kilted/laser_geometry/2.10.0-2.tar.gz";
    name = "2.10.0-2.tar.gz";
    sha256 = "a90f149c249e5a82b84009f158cd233acbaa77f9bd3b642aa0eab1fc4dc342f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
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
