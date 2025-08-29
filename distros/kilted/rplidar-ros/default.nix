
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-rplidar-ros";
  version = "2.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/kilted/rplidar_ros/2.1.0-4.tar.gz";
    name = "2.1.0-4.tar.gz";
    sha256 = "cd4df71e96075a527e4750c1d686f49b115587f69dc4b627840e60747f09c6ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-ros ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = "The rplidar ros package, support rplidar A2/A1 and A3/S1";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
