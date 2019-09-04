
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, ament-cmake, ament-cmake-gtest, message-filters, tf2, rclcpp, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-tf2-ros";
  version = "0.10.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_ros/0.10.1-0.tar.gz;
    sha256 = "9ce43d432da28490f5420df35d2adcc2486455dd97dac648d209a85d86ffc34c";
  };

  buildInputs = [ tf2-msgs message-filters tf2 rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2-msgs message-filters tf2 rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
