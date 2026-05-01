
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-lyrical-realsense2-description";
  version = "4.57.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/lyrical/realsense2_description/4.57.7-3.tar.gz";
    name = "4.57.7-3.tar.gz";
    sha256 = "db0dc1a6eb4865daf95bff15a558de01a5de789cbcb93871c532beeff670f8e7";
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
