
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-gps-tools";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gps_tools/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "2d7b24e80557a9217b14bcffe9595d4baa2a686c61b8adda9a7e16edb43abb2e";
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
