
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-image";
  version = "1.0.24-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_image/1.0.24-1.tar.gz";
    name = "1.0.24-1.tar.gz";
    sha256 = "e04357ecf71869d29484f16bff13060705a286f2c2065165c1b70db0ea10eec2";
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
