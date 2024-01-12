
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abseil-cpp, ament-cmake, boost, cartographer, cartographer-ros, cartographer-ros-msgs, eigen, pluginlib, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering }:
buildRosPackage {
  pname = "ros-humble-cartographer-rviz";
  version = "2.0.9000-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cartographer_ros-release/archive/release/humble/cartographer_rviz/2.0.9000-2.tar.gz";
    name = "2.0.9000-2.tar.gz";
    sha256 = "44cdae3209cad289d23c68c52065cfc6f3ac6a4b3642025f50a1e68a0b7cbae1";
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
