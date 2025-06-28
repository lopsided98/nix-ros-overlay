
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-phidgets-digital-outputs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/kilted/phidgets_digital_outputs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "7c191e4f41f834d740a221f1d23f8bfebf5abeb44e0f00ad00ebb0cd73b194b8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Digital Output devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
