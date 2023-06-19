
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-iron-phidgets-analog-inputs";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_analog_inputs/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "8e524ee3e2e3e846852213313b58b600d7d9ce3ffbb052e2e43bf93c9389d24c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
