
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, nmea-msgs, rcl-interfaces, rclcpp, rclcpp-components, rtcm-msgs, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox-gps";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_gps/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "a7ba83a084202677fd21ae50b2532d268afcfa90ea7df5da9cd8ad926cee89ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ asio diagnostic-msgs diagnostic-updater geometry-msgs nmea-msgs rcl-interfaces rclcpp rclcpp-components rtcm-msgs sensor-msgs std-msgs tf2 ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for u-blox GPS devices.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
