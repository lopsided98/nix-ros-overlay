
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-rolling-realsense2-description";
  version = "4.57.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/rolling/realsense2_description/4.57.7-2.tar.gz";
    name = "4.57.7-2.tar.gz";
    sha256 = "52fc8ebc73d99cd2f1bd6685f15c43a3291fafa057fcb95cf66b2b9cd41636f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RealSense description package for RealSense 3D D400 cameras";
    license = with lib.licenses; [ asl20 ];
  };
}
