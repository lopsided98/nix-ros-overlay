
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-canopen-402-driver";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_402_driver/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "d88ac82c23522e5761ab50f3b77f0f0fa85f5f3e62d2f9ac11240c2a3cdbad95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for devices implementing CIA402 profile";
    license = with lib.licenses; [ "LGPL-v3" ];
  };
}
