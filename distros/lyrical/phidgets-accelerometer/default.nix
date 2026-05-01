
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-accelerometer";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_accelerometer/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "e40f6c72e61bb2d5326ca3bde4965196e1ae258f8d4a750f23bb2c36b37b118d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Accelerometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
