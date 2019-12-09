
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, urdfdom-headers, lua5, cartographer, tf2, ament-cmake, pcl, tf2-eigen, libyamlcpp, eigen, pcl-conversions, visualization-msgs, tf2-msgs, cartographer-ros-msgs, rclcpp, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-cartographer-ros";
  version = "1.0.9000-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/eloquent/cartographer_ros/1.0.9000-1.tar.gz";
    name = "1.0.9000-1.tar.gz";
    sha256 = "ea1fe9fe0f851c817759dbc306e953af0f4cdf4488444b5a7ebdb67299a8cd3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs urdfdom-headers cartographer lua5 pcl tf2-eigen libyamlcpp eigen tf2-msgs pcl-conversions visualization-msgs tf2 cartographer-ros-msgs rclcpp nav-msgs tf2-ros ];
  propagatedBuildInputs = [ sensor-msgs cartographer lua5 tf2 pcl libyamlcpp visualization-msgs tf2-msgs cartographer-ros-msgs rclcpp nav-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's ROS integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
