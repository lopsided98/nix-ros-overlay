
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-rplidar-ros";
  version = "2.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/jazzy/rplidar_ros/2.1.0-4.tar.gz";
    name = "2.1.0-4.tar.gz";
    sha256 = "a6315b8266068761c102a589801740c58f28b5afbcc4de349028dcd738ebefde";
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
