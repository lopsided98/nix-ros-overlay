
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-rolling-realsense2-description";
  version = "4.58.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/rolling/realsense2_description/4.58.4-1.tar.gz";
    name = "4.58.4-1.tar.gz";
    sha256 = "b89ae4db99f915df94d190d20c6dd751dcac3371b95965218293a6737b047f20";
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
