
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, python-cmake-module, python3Packages, rclcpp, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-sensor-msgs";
  version = "0.36.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_sensor_msgs/0.36.0-2.tar.gz";
    name = "0.36.0-2.tar.gz";
    sha256 = "44278ede241d0cf051e37615ee28ef23baaa2d894bfb8e95d1639ddbcd1f7ce5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs python3Packages.numpy sensor-msgs sensor-msgs-py std-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module python-cmake-module ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
