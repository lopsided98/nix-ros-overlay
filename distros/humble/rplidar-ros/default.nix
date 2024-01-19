
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rplidar-ros";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/humble/rplidar_ros/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "c70828ef60a772f1e84f779106b7b2cb16719f7165feb69e8b5007dc537b4348";
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
