
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, rclcpp, tinyxml-vendor, std-msgs, rcl, std-srvs, launch-ros, ament-lint-common, ament-cmake, gazebo-msgs, ament-cmake-gtest, rclpy, builtin-interfaces, ament-lint-auto, gazebo-dev }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-ros";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_ros/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "3df6258906354085a75725d07865002b7e2e5690fb8faf50115c5b90ef3b44d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp tinyxml-vendor rcl std-srvs gazebo-msgs rclpy builtin-interfaces gazebo-dev ];
  checkInputs = [ sensor-msgs geometry-msgs std-msgs ament-lint-common ament-lint-auto ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs rclcpp tinyxml-vendor rcl std-srvs launch-ros gazebo-msgs rclpy builtin-interfaces gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
