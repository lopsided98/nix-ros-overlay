
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-filters, geometry-msgs, std-msgs, ament-cmake, tf2-msgs, tf2, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-tf2-ros";
  version = "0.11.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/dashing/tf2_ros/0.11.5-1.tar.gz";
    name = "0.11.5-1.tar.gz";
    sha256 = "a423173e22bc3aa0e6217c9004f7865b07ec0f8fab59a417767231572d2bfac7";
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
