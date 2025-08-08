
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-ik";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_ik/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "61cfc2b821fa47b305bcd3dacfcb1d23997a764c400d9d3c2fc6c4ad77582e14";
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
