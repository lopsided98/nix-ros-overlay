
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, can-utils, clearpath-socketcan-interface, diagnostic-updater, joy, puma-motor-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-puma-motor-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/puma_motor_driver-release/archive/release/humble/puma_motor_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "be0eed3a0626b1970a86552236f1a5e0cdc71051b9f890ac623fc9cb63a780e6";
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
