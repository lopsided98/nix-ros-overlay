
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, gazebo-dev, gazebo-msgs, geometry-msgs, launch-ros, rclcpp, rclpy, sensor-msgs, std-msgs, std-srvs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-dashing-gazebo-ros";
  version = "3.3.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_ros/3.3.5-3.tar.gz";
    name = "3.3.5-3.tar.gz";
    sha256 = "0da841d574b7825705c7f1c2293c2326167de406da449a7cdb25c1681d2d8e4f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces gazebo-dev gazebo-msgs geometry-msgs launch-ros rclcpp rclpy sensor-msgs std-srvs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
