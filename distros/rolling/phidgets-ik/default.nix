
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-ik";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_ik/2.3.2-2.tar.gz";
    name = "2.3.2-2.tar.gz";
    sha256 = "61e2d0202d3c13bf11acad6a474d9cd86ff6ad34ec0d976f8789292f9e4f5d86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
