
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-phidgets-accelerometer";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/kilted/phidgets_accelerometer/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "f5ffe5a5be562fe6e9b9af1cd92f87ad79221ae7c10c8c14ba7f8e9eeb32ba77";
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
