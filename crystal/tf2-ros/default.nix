
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, geometry-msgs, std-msgs, ament-cmake, tf2-msgs, tf2, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-tf2-ros";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_ros/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "9ce43d432da28490f5420df35d2adcc2486455dd97dac648d209a85d86ffc34c";
  };

  buildType = "ament_cmake";
  buildInputs = [ message-filters geometry-msgs std-msgs tf2 tf2-msgs rclcpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ message-filters geometry-msgs std-msgs tf2 tf2-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
