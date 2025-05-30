
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-gps-tools";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/kilted/gps_tools/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "4f590d4293cc81b309e7d25e3c2c8353858ee0ed1575169ad03b9b2865eaaecc";
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
