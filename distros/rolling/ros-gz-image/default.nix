
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-image";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_image/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "550d3c974f8339cdd99b24e5b42850a6765c10d1f8f3cb7ac4b5e080d4ea2b22";
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
