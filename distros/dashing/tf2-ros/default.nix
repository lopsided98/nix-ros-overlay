
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, geometry-msgs, message-filters, rclcpp, std-msgs, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-dashing-tf2-ros";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_ros/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "6b8f4ec9ea0f207445137b131e4349b7da1c4ea075e3b1bdb9a8897207cfc6b6";
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
