
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, asio, diagnostic-msgs, diagnostic-updater, geometry-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-jazzy-ublox-gps";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/jazzy/ublox_gps/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "84c0b02eafac0f44e18612d6f44d9a0abeafa27f29accf25ca4a20e9510a9147";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ asio diagnostic-msgs diagnostic-updater geometry-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs std-msgs tf2 ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for u-blox GPS devices.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
