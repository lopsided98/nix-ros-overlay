
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-analog-inputs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_analog_inputs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "4b89fcbf12f43aa0aab256e0847322feb5757c237279af20e9c09fc92f36c20d";
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
