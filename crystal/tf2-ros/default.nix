
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, message-filters, rclcpp, std-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-crystal-tf2-ros";
  version = "0.10.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/crystal/tf2_ros/0.10.1-0.tar.gz";
    name = "0.10.1-0.tar.gz";
    sha256 = "9ce43d432da28490f5420df35d2adcc2486455dd97dac648d209a85d86ffc34c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs message-filters rclcpp std-msgs tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
