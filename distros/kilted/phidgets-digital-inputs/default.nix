
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-phidgets-digital-inputs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/kilted/phidgets_digital_inputs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "ea0c17ac93d8547b08d18c259bd323ff0674412885cd5e59e5d24a3d1afb31bc";
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
