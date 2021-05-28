
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-galactic-rplidar-ros";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/allenh1/rplidar_ros-release/archive/release/galactic/rplidar_ros/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4e8301703dea9714e4c1f09eb70c17fb60b3aaed447e7e822067725afae8595e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3/S1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
