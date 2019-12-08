
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-temperature";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_temperature/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "08ac6d66bc1fc87d5f4bbae0e69764d5eb19c9224e19f16930b2a308670fe6de";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp-components rclcpp ];
  propagatedBuildInputs = [ phidgets-api launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Temperature devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
