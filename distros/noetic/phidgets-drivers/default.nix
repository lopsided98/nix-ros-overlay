
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget22, phidgets-accelerometer, phidgets-analog-inputs, phidgets-api, phidgets-digital-inputs, phidgets-digital-outputs, phidgets-gyroscope, phidgets-high-speed-encoder, phidgets-ik, phidgets-magnetometer, phidgets-motors, phidgets-msgs, phidgets-spatial, phidgets-temperature }:
buildRosPackage {
  pname = "ros-noetic-phidgets-drivers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_drivers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dc86b023d5ae909b88264baf25f097a5efd485659035358c358fba739860994d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget22 phidgets-accelerometer phidgets-analog-inputs phidgets-api phidgets-digital-inputs phidgets-digital-outputs phidgets-gyroscope phidgets-high-speed-encoder phidgets-ik phidgets-magnetometer phidgets-motors phidgets-msgs phidgets-spatial phidgets-temperature ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
