
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, python-cmake-module, python3Packages, rclcpp, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-tf2-sensor-msgs";
  version = "0.36.19-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/jazzy/tf2_sensor_msgs/0.36.19-1.tar.gz";
    name = "0.36.19-1.tar.gz";
    sha256 = "025d379d0fc5f5768938cb54ef81a8651b41b507c2d0874d6ff354e73225c0b0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp tf2-geometry-msgs ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs python3Packages.numpy sensor-msgs sensor-msgs-py std-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module python-cmake-module ];

  meta = {
    description = "Small lib to transform sensor_msgs with tf. Most notably, PointCloud2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
