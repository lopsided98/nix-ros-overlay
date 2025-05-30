
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-stepper";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_stepper/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "9520c5ce0ea7463554afdd07980052ec6d5ee4b3e235661e112fa249f6c3be2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Stepper devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
