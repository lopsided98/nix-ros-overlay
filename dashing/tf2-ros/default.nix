
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, ament-cmake, ament-cmake-gtest, message-filters, tf2, rclcpp, std-msgs, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-tf2-ros";
  version = "0.11.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_ros/0.11.4-1.tar.gz";
    name = "0.11.4-1.tar.gz";
    sha256 = "5071a2f09a282331dd7461dc4e656e8ee7f468876b2a88527e67b893b2199afe";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-msgs message-filters tf2 rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ tf2-msgs message-filters tf2 rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the ROS bindings for the tf2 library, for both Python and C++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
