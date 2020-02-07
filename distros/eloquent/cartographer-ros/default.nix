
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer, cartographer-ros-msgs, eigen, libyamlcpp, lua5, nav-msgs, pcl, pcl-conversions, rclcpp, sensor-msgs, tf2, tf2-eigen, tf2-msgs, tf2-ros, urdfdom-headers, visualization-msgs }:
buildRosPackage {
  pname = "ros-eloquent-cartographer-ros";
  version = "1.0.9001-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/eloquent/cartographer_ros/1.0.9001-1.tar.gz";
    name = "1.0.9001-1.tar.gz";
    sha256 = "d4f1f7e844aef28e6fb2e31ec554d305913d20f2da1c5e741fd1de8e52cf3b8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen pcl-conversions tf2-eigen urdfdom-headers ];
  propagatedBuildInputs = [ cartographer cartographer-ros-msgs libyamlcpp lua5 nav-msgs pcl rclcpp sensor-msgs tf2 tf2-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
