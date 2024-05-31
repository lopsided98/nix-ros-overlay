
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-accelerometer";
  version = "2.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_accelerometer/2.3.3-2.tar.gz";
    name = "2.3.3-2.tar.gz";
    sha256 = "e261633bc65f53a0afb023aa70921b544819e260b5c4b5ceab1727b4e6b1d019";
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
