
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros-gz-image";
  version = "3.0.8-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/lyrical/ros_gz_image/3.0.8-3.tar.gz";
    name = "3.0.8-3.tar.gz";
    sha256 = "71d26e1e5fe6a5c10c887f014934be2e979def3c7fad8375f16bd06ddb7eb7a6";
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
