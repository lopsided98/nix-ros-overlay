
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-temperature";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_temperature/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "a995c08fb08a011ad18105e3e0d703a02af9d8ec6eb591a3ddc77a54a30e0bc2";
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
