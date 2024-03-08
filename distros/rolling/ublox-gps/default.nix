
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox-gps";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_gps/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "8134e0a04b7c37f5d12b0e729c50d9d3ca6f223bed6f39258d32e97465da8441";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ asio diagnostic-msgs diagnostic-updater geometry-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2 ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
