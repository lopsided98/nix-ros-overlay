
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-digital-inputs";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_digital_inputs/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "bcee8eddc8458e5a57f57eaa378a3de9f9fa0c69843f1e47ef80f09250f71862";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
