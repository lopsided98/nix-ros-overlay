
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-iron-phidgets-temperature";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_temperature/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "f468564c332b2c0183dd49e393822f059ae711f8b3edd8eef7632dbfd746e9d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Temperature devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
