
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclpy, sensor-msgs, nav-msgs, gps-msgs, rclcpp, std-msgs, ament-cmake-python, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-gps-tools";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/gps_tools/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "20361ecb20916b4f1024ade50fa58552719cd6fa9f3a38fcc245b9bd97f6943b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclpy sensor-msgs nav-msgs gps-msgs rclcpp std-msgs rclcpp-components ];
  propagatedBuildInputs = [ rclpy sensor-msgs nav-msgs gps-msgs rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''GPS routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
