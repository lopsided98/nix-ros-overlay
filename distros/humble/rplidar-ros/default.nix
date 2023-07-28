
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rplidar-ros";
  version = "2.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/humble/rplidar_ros/2.1.3-3.tar.gz";
    name = "2.1.3-3.tar.gz";
    sha256 = "79f22d1d2ec3c84af02f20927ae2cf04f1ef262db1378a0ed354060758d0496e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-ros ];
  propagatedBuildInputs = [ rclcpp rclcpp-components sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-ros ];

  meta = {
    description = ''The rplidar ros package, support rplidar A1/A2/A3/S1/S2/S3/T1'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
