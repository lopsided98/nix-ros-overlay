
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-lyrical-phidgets-ik";
  version = "2.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/lyrical/phidgets_ik/2.4.0-3.tar.gz";
    name = "2.4.0-3.tar.gz";
    sha256 = "be6277a5fb14d7d6ea810303ba91aa3da18cb0b647da4f76933367cb9862b50d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Driver for the Phidgets InterfaceKit devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
