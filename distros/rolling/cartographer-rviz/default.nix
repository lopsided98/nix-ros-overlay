
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, ament-cmake, boost, cartographer, cartographer-ros, cartographer-ros-msgs, eigen, pluginlib, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-cartographer-rviz";
  version = "2.0.9001-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/rolling/cartographer_rviz/2.0.9001-2.tar.gz";
    name = "2.0.9001-2.tar.gz";
    sha256 = "66c6f73715ddb2a04ff9d80a3965e1f1b6d3978c167a73ff283da8b5542d3378";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ abseil-cpp boost cartographer cartographer-ros cartographer-ros-msgs eigen pluginlib rclcpp rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.'';
    license = with lib.licenses; [ asl20 ];
  };
}
