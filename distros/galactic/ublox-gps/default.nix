
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-galactic-ublox-gps";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/galactic/ublox_gps/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "e2801ca0a8a9e8e169ea759bdd51e0b412c728571860440c5460a015cf61c6e6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ asio diagnostic-msgs diagnostic-updater geometry-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2 ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for u-blox GPS devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
