
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libphidget22, phidgets-accelerometer, phidgets-analog-inputs, phidgets-api, phidgets-digital-inputs, phidgets-digital-outputs, phidgets-gyroscope, phidgets-high-speed-encoder, phidgets-ik, phidgets-magnetometer, phidgets-motors, phidgets-msgs, phidgets-spatial, phidgets-temperature }:
buildRosPackage {
  pname = "ros-rolling-phidgets-drivers";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_drivers/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "28fc0e1d4e71e63752b046f49f845c605f8cf98b3b3f38a1d80129bdd91d7059";
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
