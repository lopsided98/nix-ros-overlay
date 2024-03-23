
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-phidgets-magnetometer";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_magnetometer/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "a208a8261ca3fd2ab6fa2c14ea38dfe23c446c849075d3527cb5cf6032bd1000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Magnetometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
