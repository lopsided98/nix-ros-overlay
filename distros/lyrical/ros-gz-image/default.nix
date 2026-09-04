
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros-gz-image";
  version = "3.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/lyrical/ros_gz_image/3.0.10-1.tar.gz";
    name = "3.0.10-1.tar.gz";
    sha256 = "6656d903cfd7daa8bd3ab4e0a0c8700cfe2acf95d2123ac7886d72919f023310";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-msgs-vendor gz-transport-vendor image-transport rclcpp ros-gz-bridge sensor-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Image utilities for Gazebo simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
