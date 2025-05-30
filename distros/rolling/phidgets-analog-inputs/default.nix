
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-analog-inputs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_analog_inputs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "97cb9e6721a9edad5a6adf5cbf3a5c953f3204f6a3d0397797fcc76cc2537ac6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Analog Input devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
