
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-humble-ublox-gps";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/humble/ublox_gps/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "a57315ef0ebff9d8cb780627c8fbd30d9c907d2c1c118d51657ec042809305c4";
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
