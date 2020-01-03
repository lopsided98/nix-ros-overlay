
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, gazebo-dev, gazebo-msgs, geometry-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tinyxml-vendor }:
buildRosPackage {
  pname = "ros-crystal-gazebo-ros";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_ros/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "15951164aa4962195cbd701f7539de10a4da2133444a759426f22ed43de36905";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common geometry-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces gazebo-dev gazebo-msgs geometry-msgs rclcpp sensor-msgs std-srvs tinyxml-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
