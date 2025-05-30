
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-phidgets-digital-inputs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/kilted/phidgets_digital_inputs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "f22f0a7b41a757ddf4d64b2789d22c91af7f4d0836c8f3e0e029c53601dd7333";
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
