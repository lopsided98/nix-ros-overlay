
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-accelerometer";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_accelerometer/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "3552109fe2aba6f22c01da260b65ea790007f88558067211037f0cce47d82b4a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Accelerometer devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
