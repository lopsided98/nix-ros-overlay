
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-image";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_image/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "0ee0e494a4e56f5b88500943d9043ca19ba120aa7291bbaedfe21d27dcc0345f";
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
