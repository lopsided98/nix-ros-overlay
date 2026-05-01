
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libphidget22, phidgets-accelerometer, phidgets-analog-inputs, phidgets-api, phidgets-digital-inputs, phidgets-digital-outputs, phidgets-gyroscope, phidgets-high-speed-encoder, phidgets-ik, phidgets-magnetometer, phidgets-motors, phidgets-msgs, phidgets-spatial, phidgets-temperature }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-drivers";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_drivers/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "102cad70f9f036395f5642408586eda98e709ff4ef64be0472bbbcb65519968e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ libphidget22 phidgets-accelerometer phidgets-analog-inputs phidgets-api phidgets-digital-inputs phidgets-digital-outputs phidgets-gyroscope phidgets-high-speed-encoder phidgets-ik phidgets-magnetometer phidgets-motors phidgets-msgs phidgets-spatial phidgets-temperature ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "API and ROS drivers for Phidgets devices";
    license = with lib.licenses; [ "BSD-&-LGPL" ];
  };
}
