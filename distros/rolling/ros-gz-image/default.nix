
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-image";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_image/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "c4179ff519a625493e58df7c2c7992538557eba17d82623d0b302f8dd192112f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-msgs-vendor gz-transport-vendor image-transport rclcpp ros-gz-bridge sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Image utilities for Gazebo simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
