
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, geometry-msgs, message-filters, python-cmake-module, rclcpp, rclcpp-action, rclpy, std-msgs, tf2, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-eloquent-tf2-ros";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_ros/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "c43001ecbd393d53acb571ac03edf109b261bce50263fa05cb25b9b1127b6122";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ geometry-msgs message-filters rclcpp rclcpp-action rclpy std-msgs tf2 tf2-msgs tf2-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python python-cmake-module ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
