
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer, cartographer-ros-msgs, eigen, libyamlcpp, lua5, nav-msgs, pcl, pcl-conversions, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-msgs, tf2-ros, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-cartographer-ros";
  version = "1.0.9003-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/galactic/cartographer_ros/1.0.9003-4.tar.gz";
    name = "1.0.9003-4.tar.gz";
    sha256 = "3879ebaf80f5ab47be82df73ff052edf5cae37b6c70a50ef78f023fc14fc38ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen pcl-conversions tf2-eigen urdfdom-headers ];
  propagatedBuildInputs = [ cartographer cartographer-ros-msgs libyamlcpp lua5 nav-msgs pcl rclcpp sensor-msgs tf2 tf2-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
