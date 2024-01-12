
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-iron-ublox-gps";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/iron/ublox_gps/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "109fc82606f573c6ee4c7aba42b5d4d3272fbb7bb7fd7f0d3612873441690739";
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
