
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-realsense2-description";
  version = "4.58.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/humble/realsense2_description/4.58.1-1.tar.gz";
    name = "4.58.1-1.tar.gz";
    sha256 = "6df8bfe2a63b0e430d492ab68b8c54a49e82af0f8246d5daf84ac3c7fffd4336";
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
