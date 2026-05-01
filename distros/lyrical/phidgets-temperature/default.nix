
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-temperature";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_temperature/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "fa4dfcf3e3f67eb7b41fbc98e12b6bbec8f9538421cc358adf4b518ec6c17297";
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
