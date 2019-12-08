
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-spatial, phidgets-api, ament-cmake, phidgets-temperature, phidgets-ik, phidgets-motors, phidgets-magnetometer, phidgets-digital-outputs, phidgets-analog-inputs, phidgets-gyroscope, phidgets-digital-inputs, phidgets-high-speed-encoder, libphidget22, phidgets-accelerometer, phidgets-msgs }:
buildRosPackage {
  pname = "ros-dashing-phidgets-drivers";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_drivers/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5fc6c2c23d39bbacaeac470646e7b66d279a2d439abcb2d08aeb36ac8072806e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ phidgets-spatial phidgets-api phidgets-temperature phidgets-ik phidgets-magnetometer phidgets-digital-outputs phidgets-analog-inputs phidgets-accelerometer phidgets-gyroscope phidgets-digital-inputs phidgets-high-speed-encoder libphidget22 phidgets-motors phidgets-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
