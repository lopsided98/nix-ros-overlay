
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rplidar-ros";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/humble/rplidar_ros/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "607951a119995e471d3c5d19b9022d54a2ee4de7d92865036f19ec9433b17885";
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
