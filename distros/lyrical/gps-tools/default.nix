
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-gps-tools";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gps_tools/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "0868a5d933c8e5c00f8667e580a50876d756ad5fb6f1e94082404eb53a89692f";
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
