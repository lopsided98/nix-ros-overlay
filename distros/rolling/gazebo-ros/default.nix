
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, gazebo-dev, gazebo-msgs, geometry-msgs, launch-ros, launch-testing-ament-cmake, python3Packages, rcl, rclcpp, rclpy, rmw, ros2run, sensor-msgs, std-msgs, std-srvs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-rolling-gazebo-ros";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/rolling/gazebo_ros/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "4618c86d85ab32b1975d9dfcc316b42579e61173c3525e2bb9f3b4eb2fd80b23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs launch-testing-ament-cmake ros2run sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces gazebo-dev gazebo-msgs geometry-msgs launch-ros python3Packages.lxml rcl rclcpp rclpy rmw sensor-msgs std-srvs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
