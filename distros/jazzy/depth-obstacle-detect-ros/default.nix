
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, depth-obstacle-detect-ros-msgs, image-transport, rclcpp, rclcpp-components, rclpy, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-depth-obstacle-detect-ros";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/depth_obstacle_detect_ros-release/archive/release/jazzy/depth_obstacle_detect_ros/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2e401610a2c8bd67ec49d40f7b7dd30452b8bebdb7f4e7fca8c74d8104298f2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge depth-obstacle-detect-ros-msgs image-transport rclcpp rclcpp-components rclpy ros2launch sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depth based obstacle detection package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
