
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-digital-outputs, phidgets-temperature, phidgets-msgs, phidgets-magnetometer, phidgets-ik, phidgets-gyroscope, phidgets-digital-inputs, phidgets-accelerometer, phidgets-analog-inputs, ament-cmake, libphidget22, phidgets-api, phidgets-high-speed-encoder, phidgets-motors, phidgets-spatial }:
buildRosPackage {
  pname = "ros-dashing-phidgets-drivers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_drivers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5fc6c2c23d39bbacaeac470646e7b66d279a2d439abcb2d08aeb36ac8072806e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ phidgets-digital-outputs phidgets-temperature phidgets-msgs phidgets-magnetometer phidgets-ik phidgets-gyroscope phidgets-digital-inputs phidgets-accelerometer phidgets-analog-inputs libphidget22 phidgets-motors phidgets-high-speed-encoder phidgets-api phidgets-spatial ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
