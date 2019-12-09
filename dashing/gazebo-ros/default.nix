
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, rclcpp, tinyxml-vendor, std-msgs, std-srvs, launch-ros, ament-lint-common, ament-cmake, ament-lint-auto, gazebo-msgs, rclpy, builtin-interfaces, ament-cmake-gtest, gazebo-dev }:
buildRosPackage {
  pname = "ros-dashing-gazebo-ros";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_ros/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "709bc65568e54e83980d0c32884fef85f01dd325374ff171df586aae12e70329";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp tinyxml-vendor std-srvs gazebo-msgs rclpy builtin-interfaces gazebo-dev ];
  checkInputs = [ sensor-msgs geometry-msgs std-msgs ament-lint-common ament-lint-auto ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs rclcpp tinyxml-vendor std-srvs launch-ros gazebo-msgs rclpy builtin-interfaces gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
