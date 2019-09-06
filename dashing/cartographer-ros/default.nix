
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, ament-cmake, lua5, libyamlcpp, pcl, sensor-msgs, tf2-ros, cartographer-ros-msgs, tf2, nav-msgs, urdfdom-headers, rclcpp, tf2-eigen, eigen, cartographer, visualization-msgs, pcl-conversions }:
buildRosPackage {
  pname = "ros-dashing-cartographer-ros";
  version = "1.0.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/dashing/cartographer_ros/1.0.9000-1.tar.gz";
    name = "1.0.9000-1.tar.gz";
    sha256 = "bd296ee946e767b374ebd4488c1d06e4e6cca7ac37de7ef883e754b156a2e84e";
  };

  buildType = "ament_cmake";
  buildInputs = [ tf2-msgs lua5 libyamlcpp pcl sensor-msgs tf2-ros cartographer-ros-msgs tf2 nav-msgs urdfdom-headers rclcpp tf2-eigen eigen cartographer visualization-msgs pcl-conversions ];
  propagatedBuildInputs = [ tf2-msgs lua5 libyamlcpp pcl sensor-msgs tf2-ros cartographer-ros-msgs tf2 nav-msgs rclcpp cartographer visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
