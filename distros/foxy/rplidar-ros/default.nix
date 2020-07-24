
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-rplidar-ros";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/allenh1/rplidar_ros-release/archive/release/foxy/rplidar_ros/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "416d8802542ddfe6fb35e1416cf117a04098fac0c1ca8ff4205815ca765d0d48";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3/S1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
