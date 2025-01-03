
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-ik";
  version = "2.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_ik/2.3.3-2.tar.gz";
    name = "2.3.3-2.tar.gz";
    sha256 = "8bf11e6341de9ea39c27e3d8644d998314b7df9b5f5c19af8b78f011555dec93";
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
