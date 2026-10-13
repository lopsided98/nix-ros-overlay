
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-kilted-realsense2-description";
  version = "4.59.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realsense-ros-release/archive/release/kilted/realsense2_description/4.59.1-1.tar.gz";
    name = "4.59.1-1.tar.gz";
    sha256 = "43ef726922889b1e324e85cd6362a0e3bcbebe4b7824ff865228bf1960a8b762";
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
