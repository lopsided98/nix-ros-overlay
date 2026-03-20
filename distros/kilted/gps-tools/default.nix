
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-gps-tools";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/kilted/gps_tools/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "e234962e1122ade4e8016cf9922ad7f52ae2f27a48069e202c0d849923850a11";
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
