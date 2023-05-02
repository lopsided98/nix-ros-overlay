
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gps-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ac30e3898f2c04a8f9bd4c6d58e611186271ca1b1d69f8e6c376855826318c3b";
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
