
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-gps-tools";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/foxy/gps_tools/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "81c90a475056cb9c2ea011b6cedae82900fb404d6786cd4f5ae33edf60e7bd83";
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
