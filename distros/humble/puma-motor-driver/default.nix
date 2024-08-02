
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, can-utils, clearpath-socketcan-interface, diagnostic-updater, joy, puma-motor-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-puma-motor-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/humble/puma_motor_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f21374b241ad1792c1f5e82135d038d24621972a8ca3d5a818b31a9c8002d71c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ can-utils clearpath-socketcan-interface diagnostic-updater joy puma-motor-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS driver for Puma single-channel motor control board.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
