
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp-components, launch, std-msgs, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-analog-inputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_analog_inputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c4da97bfcb1ebac9a829505fb9840a4e960a97be7c3c6c9b88a192377f914df6";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp rclcpp-components ];
  propagatedBuildInputs = [ rclcpp-components launch std-msgs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Analog Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
