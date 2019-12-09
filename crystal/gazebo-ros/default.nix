
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, rclcpp, tinyxml-vendor, std-msgs, std-srvs, ament-lint-common, ament-cmake, ament-lint-auto, gazebo-msgs, builtin-interfaces, ament-cmake-gtest, gazebo-dev }:
buildRosPackage {
  pname = "ros-crystal-gazebo-ros";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_ros/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "15951164aa4962195cbd701f7539de10a4da2133444a759426f22ed43de36905";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp tinyxml-vendor std-srvs gazebo-msgs builtin-interfaces gazebo-dev ];
  checkInputs = [ sensor-msgs geometry-msgs std-msgs ament-lint-common ament-lint-auto ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs rclcpp tinyxml-vendor std-srvs gazebo-msgs builtin-interfaces gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
