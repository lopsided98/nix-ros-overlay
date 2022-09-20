
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-gps-tools";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/galactic/gps_tools/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "a02d4dc21f45dfd0e854a28debb4493d35cdce3f6fdc842c82de186b8e501b1a";
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
