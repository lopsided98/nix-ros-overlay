
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, gazebo-dev, gazebo-msgs, geometry-msgs, launch-ros, launch-testing-ament-cmake, python3Packages, rcl, rclcpp, rclpy, rmw, ros2run, sensor-msgs, std-msgs, std-srvs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-galactic-gazebo-ros";
  version = "3.5.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/gazebo_ros/3.5.2-5.tar.gz";
    name = "3.5.2-5.tar.gz";
    sha256 = "3ac674a23595b8a31380f8117bb342f4737faed26ed59aa33c188da28019421a";
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
