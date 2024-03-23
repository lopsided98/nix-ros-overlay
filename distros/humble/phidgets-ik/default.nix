
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-humble-phidgets-ik";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_ik/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "c2d6b6550ecfd6de0f6f437bfbdf3cd97a4a88c081f6626825d409885aca9d37";
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
