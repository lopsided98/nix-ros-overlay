
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, nmea-msgs, rcl-interfaces, rclcpp, rclcpp-components, rtcm-msgs, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-lyrical-ublox-gps";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/lyrical/ublox_gps/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "2cf8c6660d2c9e2c07014344eb19fd2d7402a395afbffa5226e8fc974d639516";
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
