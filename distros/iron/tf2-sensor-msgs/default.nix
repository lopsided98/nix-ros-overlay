
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, python-cmake-module, python3Packages, rclcpp, sensor-msgs, sensor-msgs-py, std-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-tf2-sensor-msgs";
  version = "0.31.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/tf2_sensor_msgs/0.31.5-1.tar.gz";
    name = "0.31.5-1.tar.gz";
    sha256 = "e9b53eca661d188ee31e8f9a85f353b24e5efc91674245bc9a194e309a79f35a";
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
