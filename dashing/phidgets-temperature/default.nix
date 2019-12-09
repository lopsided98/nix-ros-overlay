
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp-components, launch, std-msgs, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-phidgets-temperature";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_temperature/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "08ac6d66bc1fc87d5f4bbae0e69764d5eb19c9224e19f16930b2a308670fe6de";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp rclcpp-components ];
  propagatedBuildInputs = [ rclcpp-components launch std-msgs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Temperature devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
