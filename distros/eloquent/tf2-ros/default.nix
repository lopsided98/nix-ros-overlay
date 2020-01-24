
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, geometry-msgs, message-filters, python-cmake-module, rclcpp, rclcpp-action, rclpy, std-msgs, tf2, tf2-msgs, tf2-py }:
buildRosPackage {
  pname = "ros-eloquent-tf2-ros";
  version = "0.12.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/tf2_ros/0.12.5-1.tar.gz";
    name = "0.12.5-1.tar.gz";
    sha256 = "c94fc5f2e2fcb03976fcb06698c359e0e798bffb559db0a98d757b4b2e86e937";
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
