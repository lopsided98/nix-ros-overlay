
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libphidget22, phidgets-accelerometer, phidgets-analog-inputs, phidgets-api, phidgets-digital-inputs, phidgets-digital-outputs, phidgets-gyroscope, phidgets-high-speed-encoder, phidgets-ik, phidgets-magnetometer, phidgets-motors, phidgets-msgs, phidgets-spatial, phidgets-temperature }:
buildRosPackage {
  pname = "ros-galactic-phidgets-drivers";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_drivers/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "1658cc97336b4da0bff84744fe565fd4b0648b971508092be82fced68e7b26fb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ libphidget22 phidgets-accelerometer phidgets-analog-inputs phidgets-api phidgets-digital-inputs phidgets-digital-outputs phidgets-gyroscope phidgets-high-speed-encoder phidgets-ik phidgets-magnetometer phidgets-motors phidgets-msgs phidgets-spatial phidgets-temperature ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
