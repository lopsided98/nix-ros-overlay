
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-rplidar-ros";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/rolling/rplidar_ros/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "30bf99baeedf12d10f925e40e705c26910114406beb16229d5285540586ea6d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-ros ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3/S1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
