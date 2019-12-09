
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, message-filters, geometry-msgs, std-msgs, tf2, ament-cmake, tf2-py, rclpy, tf2-msgs, python-cmake-module, ament-cmake-gtest, ament-cmake-pytest, rclcpp, ament-cmake-python }:
buildRosPackage {
  pname = "ros-eloquent-tf2-ros";
  version = "0.12.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_ros/0.12.4-1.tar.gz";
    name = "0.12.4-1.tar.gz";
    sha256 = "c43001ecbd393d53acb571ac03edf109b261bce50263fa05cb25b9b1127b6122";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action message-filters geometry-msgs std-msgs tf2-py rclpy tf2-msgs tf2 rclcpp ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ rclcpp-action message-filters geometry-msgs std-msgs tf2-py rclpy tf2-msgs tf2 rclcpp ];
  nativeBuildInputs = [ ament-cmake-python python-cmake-module ament-cmake ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
