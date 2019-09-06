
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, std-srvs, ament-cmake, ament-lint-common, geometry-msgs, sensor-msgs, ament-cmake-gtest, gazebo-dev, rclcpp, tinyxml-vendor, std-msgs, ament-lint-auto, gazebo-msgs }:
buildRosPackage {
  pname = "ros-crystal-gazebo-ros";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_ros/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "15951164aa4962195cbd701f7539de10a4da2133444a759426f22ed43de36905";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces std-srvs gazebo-dev rclcpp tinyxml-vendor gazebo-msgs ];
  checkInputs = [ ament-lint-common sensor-msgs ament-cmake-gtest std-msgs ament-lint-auto geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces std-srvs geometry-msgs sensor-msgs gazebo-dev rclcpp tinyxml-vendor gazebo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
