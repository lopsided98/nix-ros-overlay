
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gps-tools";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_tools/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "c3b952465d91b41337d7008d858b5971fe3f047bb5b1084cef2241e1d02ee2fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ gps-msgs nav-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "GPS routines for use in GPS drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
