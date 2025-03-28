
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, gazebo-dev, gazebo-msgs, geometry-msgs, launch-ros, launch-testing-ament-cmake, python3Packages, rcl, rclcpp, rclpy, rmw, ros2run, sensor-msgs, std-msgs, std-srvs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-humble-gazebo-ros";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_ros/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "47a629eda8f2c6edf6635674d8bcccd249b513c57efb78e7b2da5fa793d6e9ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs launch-testing-ament-cmake ros2run sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces gazebo-dev gazebo-msgs geometry-msgs launch-ros python3Packages.lxml rcl rclcpp rclpy rmw sensor-msgs std-srvs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities to interface with <a href=\"http://classic.gazebosim.org\">Gazebo</a> through ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
