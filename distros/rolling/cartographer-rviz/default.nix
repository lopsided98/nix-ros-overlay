
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, ament-cmake, boost, cartographer, cartographer-ros, cartographer-ros-msgs, eigen, pluginlib, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-cartographer-rviz";
  version = "2.0.9003-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/rolling/cartographer_rviz/2.0.9003-1.tar.gz";
    name = "2.0.9003-1.tar.gz";
    sha256 = "09da5219cce2c0df8b6b7c4ecab3516770dba17892586f9b376dc11ab35d3bfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ abseil-cpp boost cartographer cartographer-ros cartographer-ros-msgs eigen pluginlib rclcpp rviz-common rviz-ogre-vendor rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Cartographer is a system that provides real-time simultaneous localization
    and mapping (SLAM) in 2D and 3D across multiple platforms and sensor
    configurations. This package provides Cartographer's RViz integration.";
    license = with lib.licenses; [ asl20 ];
  };
}
