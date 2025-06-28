
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-digital-inputs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_digital_inputs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "9103192b2da88124eddc5170184a481968773294a6e3c1b55384ac1eaff9a6c5";
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
