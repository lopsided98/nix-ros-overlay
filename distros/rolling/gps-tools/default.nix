
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-gps-tools";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/rolling/gps_tools/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "3dd9a570e1ebc010501661e58ddf909c381e90dfc96d3357d23c39b787bc9d76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ gps-msgs nav-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''GPS routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
