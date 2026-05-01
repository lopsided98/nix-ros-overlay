
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, rclcpp, rclcpp-components, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-rplidar-ros";
  version = "2.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rplidar_ros-release/archive/release/lyrical/rplidar_ros/2.1.0-5.tar.gz";
    name = "2.1.0-5.tar.gz";
    sha256 = "3f51972b94a71e889b0cff8a20217f136359bb086e3a5cf688015b7c448e5d5e";
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
