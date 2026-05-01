
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, ament-cmake, boost, cartographer, cartographer-ros, cartographer-ros-msgs, eigen, pluginlib, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-lyrical-cartographer-rviz";
  version = "2.0.9003-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/lyrical/cartographer_rviz/2.0.9003-3.tar.gz";
    name = "2.0.9003-3.tar.gz";
    sha256 = "0d1cb6793eb3958645e19a4a9f994c3434f99cf9d4d250b30a2befe52ff2bb2e";
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
