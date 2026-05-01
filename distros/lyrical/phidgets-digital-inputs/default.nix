
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-digital-inputs";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_digital_inputs/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "412c307ab78eea60415434f3c6d8075971650ddea9e296877bb2fc0badb7dec4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Digital Input devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
