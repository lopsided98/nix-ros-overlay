
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, nmea-msgs, rcl-interfaces, rclcpp, rclcpp-components, rtcm-msgs, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox-gps";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_gps/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "4f39376b4cdd33e5c18e503a9862d25d3b35fef3df7cdb278858f6bfd9e94069";
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
