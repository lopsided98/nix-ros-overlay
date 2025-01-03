
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-temperature";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_temperature/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "a062ce75d929c565c30aee3b3db783bcb81b1f73583daad24e2f2acf194698e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Temperature devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
