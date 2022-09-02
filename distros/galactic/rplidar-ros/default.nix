
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-galactic-rplidar-ros";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/allenh1/rplidar_ros-release/archive/release/galactic/rplidar_ros/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "0b9e41d23195ec90a01bd2018bad7a5858667fe8b068f26ec1fcdf43cf7a34af";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''The rplidar ros package, support rplidar A2/A1 and A3/S1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
